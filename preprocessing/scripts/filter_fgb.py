#!/usr/bin/env python3
"""
filter_fgb.py — Remove features from FlatGeobuf files by SQL attribute filter.

Reads each input .fgb, drops rows matching the given condition(s), and writes
the surviving features to an output directory as indexed FlatGeobufs.
Output filenames are preserved so the output directory can be used as a
drop-in replacement for tippecanoe inputs.

The --where clause (or JSON config values) describes features TO DELETE.
Matching rows are excluded; all other rows are written to the output.

Usage
-----
  # One filter applied to every listed file:
  python filter_fgb.py \\
      --where "province = 'Ituri'" \\
      --output-dir /tmp/filtered \\
      GRID3_COD_province_v8_0.fgb GRID3_COD_zonesante_v8_0.fgb

  # Per-file rules from a JSON config (overrides --where for listed files):
  python filter_fgb.py \\
      --config rules.json \\
      --output-dir /tmp/filtered \\
      /path/to/data/*.fgb

rules.json example
------------------
  {
    "GRID3_COD_province_v8_0.fgb":            "province = 'Ituri'",
    "GRID3_COD_antenne_v8_0.fgb":             "province = 'Ituri'",
    "GRID3_COD_zonesante_v8_0.fgb":           "province = 'Ituri'",
    "GRID3_COD_airesante_v8_0.fgb":           "province = 'Ituri'",
    "GRID3_COD_province_v8_0_centroids.fgb":  "province = 'Ituri'",
    "GRID3_COD_antenne_v8_0_centroids.fgb":   "province = 'Ituri'",
    "GRID3_COD_zonesante_v8_0_centroids.fgb": "province = 'Ituri'",
    "GRID3_COD_airesante_v8_0_centroids.fgb": "province = 'Ituri'"
  }

  A "*" key serves as a fallback for any file not explicitly listed.
  Files with no matching rule are skipped (not copied to the output dir).

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


def filter_fgb(
    input_path: Path,
    output_path: Path,
    delete_where: str,
    con: duckdb.DuckDBPyConnection,
    verbose: bool = True,
) -> dict:
    """
    Read input_path, drop rows WHERE delete_where is true, write to output_path.

    Returns a result dict with success flag, counts, and timing.
    """
    t = time.time()
    tbl = "_filter_work"

    try:
        con.execute(f"DROP TABLE IF EXISTS {tbl}")
        con.execute(f"CREATE TABLE {tbl} AS SELECT * FROM ST_Read('{input_path}')")

        n_total   = (con.execute(f"SELECT COUNT(*) FROM {tbl}").fetchone() or (0,))[0]
        n_deleted = (con.execute(f"SELECT COUNT(*) FROM {tbl} WHERE ({delete_where})").fetchone() or (0,))[0]

        output_path.parent.mkdir(parents=True, exist_ok=True)
        con.execute(f"""
            COPY (SELECT * FROM {tbl} WHERE NOT ({delete_where}))
            TO '{output_path}'
            WITH (FORMAT GDAL, DRIVER 'FlatGeobuf', LAYER_CREATION_OPTIONS 'SPATIAL_INDEX=YES')
        """)

        result = {
            "success":   True,
            "input":     str(input_path),
            "output":    str(output_path),
            "n_total":   n_total,
            "n_deleted": n_deleted,
            "n_kept":    n_total - n_deleted,
            "elapsed":   _fmt(t),
        }
        if verbose:
            print(
                f"  ✓ {input_path.name}: {n_total:,} → {result['n_kept']:,} kept "
                f"({n_deleted:,} removed)  [{_fmt(t)}]",
                flush=True,
            )
        return result

    except Exception as exc:
        result = {
            "success": False,
            "input":   str(input_path),
            "error":   str(exc),
            "elapsed": _fmt(t),
        }
        if verbose:
            print(f"  ✗ {input_path.name}: {exc}", flush=True)
        return result

    finally:
        con.execute(f"DROP TABLE IF EXISTS {tbl}")


def _resolve_filter(filename: str, config: dict, default_where: str | None) -> str | None:
    """Return the WHERE clause for filename, or None if no rule applies."""
    return config.get(filename) or config.get("*") or default_where


def main() -> None:
    parser = argparse.ArgumentParser(
        description="Remove FlatGeobuf features matching a SQL WHERE condition.",
        formatter_class=argparse.RawDescriptionHelpFormatter,
    )
    parser.add_argument(
        "inputs", nargs="+", metavar="FILE.fgb",
        help="Input FlatGeobuf file(s)",
    )
    parser.add_argument(
        "--where", metavar="SQL",
        help="SQL condition identifying features TO DELETE (applied to all files without a config entry)",
    )
    parser.add_argument(
        "--config", metavar="rules.json",
        help="JSON file mapping filenames → per-file WHERE clauses (see module docstring)",
    )
    parser.add_argument(
        "--output-dir", required=True, metavar="DIR",
        help="Directory for filtered output files (original filenames preserved)",
    )
    parser.add_argument(
        "--suffix", default="",
        help="Optional suffix appended to each output stem before the extension, e.g. '_filtered'",
    )
    parser.add_argument(
        "--quiet", action="store_true",
        help="Suppress per-file progress output",
    )

    args = parser.parse_args()

    config: dict = {}
    if args.config:
        with open(args.config) as f:
            config = json.load(f)

    if not config and not args.where:
        parser.error("Provide at least one of --where or --config.")

    output_dir = Path(args.output_dir)
    output_dir.mkdir(parents=True, exist_ok=True)

    con = duckdb.connect()
    con.install_extension("spatial")
    con.load_extension("spatial")

    t_total = time.time()
    results = []

    for path_str in args.inputs:
        input_path = Path(path_str)

        if not input_path.exists():
            print(f"  – {input_path.name}: file not found, skipped", flush=True)
            continue

        where = _resolve_filter(input_path.name, config, args.where)

        if where is None:
            if not args.quiet:
                print(f"  – {input_path.name}: no rule, skipped", flush=True)
            continue

        stem = input_path.stem + args.suffix
        output_path = output_dir / f"{stem}{input_path.suffix}"

        if not args.quiet:
            print(f"\nFiltering  {input_path.name}", flush=True)
            print(f"  WHERE  {where}", flush=True)

        results.append(filter_fgb(input_path, output_path, where, con, verbose=not args.quiet))

    con.close()

    succeeded = [r for r in results if r["success"]]
    failed    = [r for r in results if not r["success"]]

    print(f"\n{'='*60}", flush=True)
    print(f"Done: {len(succeeded)} succeeded, {len(failed)} failed  [{_fmt(t_total)}]", flush=True)
    if succeeded:
        total_removed = sum(r["n_deleted"] for r in succeeded)
        total_kept    = sum(r["n_kept"]    for r in succeeded)
        print(f"  Features removed: {total_removed:,}", flush=True)
        print(f"  Features kept:    {total_kept:,}", flush=True)
    for r in failed:
        print(f"  ✗ {Path(r['input']).name}: {r['error']}", flush=True)

    sys.exit(0 if not failed else 1)


if __name__ == "__main__":
    main()
