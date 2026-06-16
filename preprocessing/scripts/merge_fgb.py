#!/usr/bin/env python3
"""
merge_fgb.py — Merge multiple FlatGeobuf files into one via DuckDB UNION ALL BY NAME.

Combines two or more FGB files into a single indexed FlatGeobuf, adding a
`merge_src` string column to each row so the origin of every feature is
traceable (useful for MapLibre style expressions and QA).

Schema differences between inputs are handled gracefully by UNION ALL BY NAME:
the first input's column types are used as the reference; columns absent in
later inputs are filled with NULL. Always list the richer source (e.g. the
full v8_0 dataset) first.

Usage
-----
  # CLI — config-driven (all merges in one call):
  python merge_fgb.py \\
      --config cod_merge_rules.json \\
      --scratch-dir /tmp/grid3_tiles/data/2-scratch \\
      [--quiet]

  # Python API — single merge job:
  from pathlib import Path
  import duckdb
  from merge_fgb import merge_fgb

  con = duckdb.connect()
  con.install_extension("spatial"); con.load_extension("spatial")
  result = merge_fgb(
      inputs=[
          (Path("/scratch/GRID3_boundaries/_filtered/GRID3_COD_province_v8_0.fgb"), "v8_0"),
          (Path("/scratch/GRID3_boundaries/GRID3_COD_IT_province_20260611.fgb"),    "IT_20260611"),
      ],
      output_path=Path("/scratch/GRID3_boundaries/GRID3_COD_province_v8_0.fgb"),
      con=con,
  )
  con.close()

Requires
--------
  pip install duckdb
"""

import argparse
import json
import sys
import time
from pathlib import Path

import duckdb


def _fmt(t0: float) -> str:
    s = time.time() - t0
    return f"{s/60:.1f}m" if s >= 60 else f"{s:.1f}s"


def merge_fgb(
    inputs: list[tuple[Path, str]],
    output_path: Path,
    con: duckdb.DuckDBPyConnection,
    overwrite: bool = True,
    verbose: bool = True,
) -> dict:
    """
    Merge two or more FGB files into one via UNION ALL BY NAME, adding merge_src.

    Args:
        inputs:      [(abs_path, src_tag), ...] — ordered list of inputs.
                     The first entry's schema is used as the column-type reference.
        output_path: Destination FlatGeobuf (overwritten if overwrite=True).
        con:         Open DuckDB connection with spatial extension loaded.
        overwrite:   If False and output_path exists, skip and return a skipped result.
        verbose:     Print per-file progress lines.

    Returns:
        dict with keys: success, output, inputs, n_total, n_per_src, elapsed.
    """
    t = time.time()

    if not overwrite and output_path.exists():
        if verbose:
            print(f"  – {output_path.name}: exists, skipped", flush=True)
        return {
            "success": True,
            "skipped": True,
            "output":  str(output_path),
            "inputs":  [str(p) for p, _ in inputs],
            "elapsed": _fmt(t),
        }

    missing = [str(p) for p, _ in inputs if not p.exists()]
    if missing:
        msg = f"Missing input(s): {missing}"
        if verbose:
            print(f"  ✗ {output_path.name}: {msg}", flush=True)
        return {"success": False, "output": str(output_path), "error": msg, "elapsed": _fmt(t)}

    tbl = "_merge_work"
    try:
        # Build UNION ALL BY NAME across all inputs.
        # Each sub-select adds a literal merge_src column so rows remain distinguishable.
        subqueries = []
        for path, tag in inputs:
            escaped_path = str(path).replace("'", "''")
            escaped_tag  = tag.replace("'", "''")
            # Build an explicit column list to drop any pre-existing merge_src
            # so re-running against already-merged files doesn't produce duplicates.
            schema = con.execute(
                f"DESCRIBE (SELECT * FROM ST_Read('{escaped_path}'))"
            ).fetchall()
            cols = [f'"{row[0]}"' for row in schema if row[0] != "merge_src"]
            subqueries.append(
                f"SELECT {', '.join(cols)}, '{escaped_tag}' AS merge_src"
                f" FROM ST_Read('{escaped_path}')"
            )
        union_sql = "\nUNION ALL BY NAME\n".join(subqueries)

        con.execute(f"DROP TABLE IF EXISTS {tbl}")
        con.execute(f"CREATE TABLE {tbl} AS {union_sql}")

        # Fill NULL Shape__Area / Shape__Length for rows that came from sources
        # lacking those columns (e.g. IT data from GPKG). Only applied to polygon
        # geometry types — centroid files are points and ST_Area would return 0.
        cols_in_tbl = {row[0] for row in con.execute(f"DESCRIBE {tbl}").fetchall()}
        geom_type_row = con.execute(
            f"SELECT ST_GeometryType(geom) FROM {tbl} WHERE geom IS NOT NULL LIMIT 1"
        ).fetchone()
        is_polygon = geom_type_row and "POLYGON" in (geom_type_row[0] or "").upper()
        if is_polygon:
            if "Shape__Area" in cols_in_tbl:
                con.execute(
                    f'UPDATE {tbl} SET "Shape__Area" = ST_Area(geom) WHERE "Shape__Area" IS NULL'
                )
            if "Shape__Length" in cols_in_tbl:
                con.execute(
                    f'UPDATE {tbl} SET "Shape__Length" = ST_Perimeter(geom) WHERE "Shape__Length" IS NULL'
                )

        n_total = (con.execute(f"SELECT COUNT(*) FROM {tbl}").fetchone() or (0,))[0]

        # Per-source counts for reporting
        n_per_src: dict[str, int] = {}
        for _, tag in inputs:
            escaped_tag = tag.replace("'", "''")
            n = (con.execute(f"SELECT COUNT(*) FROM {tbl} WHERE merge_src = '{escaped_tag}'").fetchone() or (0,))[0]
            n_per_src[tag] = n

        output_path.parent.mkdir(parents=True, exist_ok=True)
        con.execute(f"""
            COPY (SELECT * FROM {tbl})
            TO '{str(output_path)}'
            WITH (FORMAT GDAL, DRIVER 'FlatGeobuf', SRS 'EPSG:4326', LAYER_CREATION_OPTIONS 'SPATIAL_INDEX=YES')
        """)

        result = {
            "success":   True,
            "output":    str(output_path),
            "inputs":    [str(p) for p, _ in inputs],
            "n_total":   n_total,
            "n_per_src": n_per_src,
            "elapsed":   _fmt(t),
        }
        if verbose:
            src_summary = ", ".join(f"{tag}={n:,}" for tag, n in n_per_src.items())
            print(
                f"  ✓ {output_path.name}: {n_total:,} features  [{src_summary}]  [{_fmt(t)}]",
                flush=True,
            )
        return result

    except Exception as exc:
        if verbose:
            print(f"  ✗ {output_path.name}: {exc}", flush=True)
        return {
            "success": False,
            "output":  str(output_path),
            "inputs":  [str(p) for p, _ in inputs],
            "error":   str(exc),
            "elapsed": _fmt(t),
        }
    finally:
        con.execute(f"DROP TABLE IF EXISTS {tbl}")


def run_merge_config(
    config_path: Path,
    scratch_dir: Path,
    overwrite: bool = True,
    verbose: bool = True,
) -> list[dict]:
    """
    Load cod_merge_rules.json and run all merge jobs.

    Each merge entry in the config maps an output filename (relative to
    scratch_dir) to an ordered list of inputs, each with a subdir (relative to
    scratch_dir), filename, and src_tag.

    Args:
        config_path: Path to the JSON merge rules file.
        scratch_dir: Base directory for resolving all relative subdirs in the config.
        overwrite:   Passed through to merge_fgb().
        verbose:     Print progress.

    Returns:
        List of result dicts (one per merge job).
    """
    config_path = Path(config_path)
    scratch_dir = Path(scratch_dir)

    with open(config_path) as f:
        config = json.load(f)

    con = duckdb.connect()
    con.install_extension("spatial")
    con.load_extension("spatial")

    t_total = time.time()
    results = []

    for output_key, job in config.get("merges", {}).items():
        # output_key is like "GRID3_boundaries/GRID3_COD_province_v8_0.fgb"
        output_path = scratch_dir / output_key

        inputs: list[tuple[Path, str]] = []
        for entry in job["inputs"]:
            input_path = scratch_dir / entry["subdir"] / entry["file"]
            inputs.append((input_path, entry["src_tag"]))

        if verbose:
            print(f"\nMerging → {output_path.name}", flush=True)
            for p, tag in inputs:
                print(f"  + [{tag}] {p.name}", flush=True)

        results.append(merge_fgb(inputs, output_path, con, overwrite=overwrite, verbose=verbose))

    con.close()

    if verbose:
        ok   = [r for r in results if r.get("success")]
        fail = [r for r in results if not r.get("success")]
        skip = [r for r in ok if r.get("skipped")]
        done = [r for r in ok if not r.get("skipped")]
        print(f"\n{'='*60}", flush=True)
        print(
            f"Done: {len(done)} merged, {len(skip)} skipped, {len(fail)} failed  [{_fmt(t_total)}]",
            flush=True,
        )
        if done:
            print(f"  Total features: {sum(r.get('n_total', 0) for r in done):,}", flush=True)
        for r in fail:
            print(f"  ✗ {Path(r['output']).name}: {r.get('error', '?')}", flush=True)

    return results


def main() -> None:
    parser = argparse.ArgumentParser(
        description="Merge FlatGeobuf files via UNION ALL BY NAME, adding a merge_src field.",
        formatter_class=argparse.RawDescriptionHelpFormatter,
    )
    parser.add_argument(
        "--config", required=True, metavar="rules.json",
        help="JSON merge rules file (see cod_merge_rules.json for format)",
    )
    parser.add_argument(
        "--scratch-dir", required=True, metavar="DIR",
        help="Base scratch directory; all subdir paths in the config are resolved relative to this",
    )
    parser.add_argument(
        "--no-overwrite", action="store_true",
        help="Skip output files that already exist (default: overwrite)",
    )
    parser.add_argument(
        "--quiet", action="store_true",
        help="Suppress per-file progress output",
    )

    args = parser.parse_args()

    results = run_merge_config(
        config_path=Path(args.config),
        scratch_dir=Path(args.scratch_dir),
        overwrite=not args.no_overwrite,
        verbose=not args.quiet,
    )

    failed = [r for r in results if not r.get("success")]
    sys.exit(0 if not failed else 1)


if __name__ == "__main__":
    main()
