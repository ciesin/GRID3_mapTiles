"""
assemble_africa.py — Build Africa-level PMTiles archives via tile-join.

Reads profiles/africa/assembly.yaml and produces:
  - Per-theme archives: GRID3_africa_{theme}.pmtiles  →  output_dir/africa/
  - Final merged archive: GRID3_africa.pmtiles         →  output_dir/africa/

Sources are auto-discovered from output_dir/{iso3}/ for all ISO3 codes that
have a layers.yaml in profiles/ (i.e., all non-africa ISO3s).

Usage (standalone):
    python assemble_africa.py [--output-dir /tmp/grid3_tiles/data/3-pmtiles/grid3]
                               [--dry-run] [--verbose]

Usage (Python API):
    from assemble_africa import assemble_africa
    results = assemble_africa(output_dir=OUTPUT_GRID3_DIR, verbose=True)
"""

import subprocess
import json
import argparse
from pathlib import Path

_PROFILES_DIR = Path(__file__).resolve().parent.parent / "profiles"
_ASSEMBLY_YML = _PROFILES_DIR / "africa" / "assembly.yaml"


def _pmtiles_maxzoom(path: Path) -> int | None:
    try:
        out = subprocess.check_output(
            ["pmtiles", "show", "--json", str(path)], stderr=subprocess.DEVNULL
        )
        return json.loads(out).get("maxzoom")
    except Exception:
        return None


def _tile_join(output_path: Path, inputs: list[Path],
               name: str | None = None,
               description: str | None = None,
               attribution: str | None = None,
               verbose: bool = True) -> bool:
    zooms = [z for z in (_pmtiles_maxzoom(p) for p in inputs) if z is not None]
    cmd = ["tile-join", "-fo", str(output_path), "--no-tile-size-limit"]
    if zooms:
        cmd += [f"-z{max(zooms)}"]
    if name:
        cmd += ["-n", name]
    if description:
        cmd += ["-N", description]
    if attribution:
        cmd += ["-A", attribution]
    cmd += [str(p) for p in inputs]
    if verbose:
        print(f"  tile-join → {output_path.name}  ({len(inputs)} input(s))")
        for p in inputs:
            print(f"    + {p.relative_to(p.parents[2]) if len(p.parents) > 2 else p.name}")
    try:
        subprocess.run(cmd, check=True)
        size_mb = output_path.stat().st_size / 1024 / 1024
        if verbose:
            print(f"  ✓ {output_path.name} ({size_mb:.1f} MB)")
        return True
    except subprocess.CalledProcessError as e:
        print(f"  ✗ tile-join failed (exit {e.returncode}): {output_path.name}")
        return False


def _discover_iso3_codes() -> list[str]:
    """Return ISO3 codes that have a layers.yaml (excludes 'africa')."""
    return sorted(
        p.parent.name
        for p in _PROFILES_DIR.glob("*/layers.yaml")
        if p.parent.name != "africa"
    )


def assemble_africa(
    output_dir: Path | str,
    dry_run: bool = False,
    verbose: bool = True,
) -> list[dict]:
    """
    Run all assembly jobs defined in profiles/africa/assembly.yaml.

    Args:
        output_dir: Root of the grid3 tile output tree (OUTPUT_GRID3_DIR).
                    Africa outputs go to output_dir/africa/.
        dry_run:    Print what would run without executing tile-join.
        verbose:    Print progress.

    Returns:
        List of result dicts: {output, success, inputs, skipped}.
    """
    try:
        import yaml as _yaml
    except ImportError:
        raise RuntimeError("PyYAML required: pip install pyyaml")

    output_dir = Path(output_dir)
    africa_dir = output_dir / "africa"
    africa_dir.mkdir(parents=True, exist_ok=True)

    assembly = _yaml.safe_load(_ASSEMBLY_YML.read_text())
    iso3_codes = _discover_iso3_codes()

    if verbose:
        print(f"=== AFRICA ASSEMBLY ===")
        print(f"  ISO3 sources: {iso3_codes}")
        print(f"  Output: {africa_dir}")
        print(f"  {'DRY RUN — ' if dry_run else ''}running {len(assembly.get('assemblies', []))} job(s)\n")

    results = []

    for job in assembly.get("assemblies", []):
        output_name = job["output"]
        output_path = africa_dir / f"{output_name}.pmtiles"
        name        = job.get("name")
        description = job.get("description")
        attribution = job.get("attribution")

        if job.get("sources") == "auto":
            # Final merge: collect all sibling GRID3_africa_*.pmtiles
            inputs = sorted(africa_dir.glob("GRID3_africa_*.pmtiles"))
        else:
            # Theme assembly: find GRID3_{ISO3}_{theme}.pmtiles for each ISO3
            theme = job.get("theme", "")
            inputs = []
            for iso3 in iso3_codes:
                # Match stem ends with _{theme} (case-insensitive)
                for f in sorted((output_dir / iso3).glob("*.pmtiles")):
                    stem_lower = f.stem.lower()
                    if stem_lower.endswith(f"_{theme.lower()}"):
                        inputs.append(f)

        if not inputs:
            if verbose:
                print(f"  – {output_name}: no sources found, skipping")
            results.append({"output": str(output_path), "success": False,
                            "skipped": True, "inputs": []})
            continue

        if dry_run:
            print(f"  [dry-run] {output_name}.pmtiles ← {[p.name for p in inputs]}")
            results.append({"output": str(output_path), "success": True,
                            "skipped": False, "inputs": [str(p) for p in inputs]})
            continue

        ok = _tile_join(output_path, inputs, name=name,
                        description=description, attribution=attribution,
                        verbose=verbose)
        results.append({
            "output":  str(output_path),
            "success": ok,
            "skipped": False,
            "inputs":  [str(p) for p in inputs],
        })

    if verbose:
        ok_count   = sum(1 for r in results if r["success"] and not r["skipped"])
        skip_count = sum(1 for r in results if r["skipped"])
        fail_count = sum(1 for r in results if not r["success"] and not r["skipped"])
        print(f"\n  Done: {ok_count} assembled, {skip_count} skipped, {fail_count} failed")

    return results


def main():
    parser = argparse.ArgumentParser(description="Assemble Africa-level PMTiles archives")
    parser.add_argument("--output-dir", default=None,
                        help="OUTPUT_GRID3_DIR (default: read from DATA_DISK env var)")
    parser.add_argument("--dry-run", action="store_true")
    parser.add_argument("--verbose", action="store_true", default=True)
    args = parser.parse_args()

    if args.output_dir:
        output_dir = Path(args.output_dir)
    else:
        import sys, os
        sys.path.insert(0, str(Path(__file__).resolve().parent.parent))
        from config import OUTPUT_GRID3_DIR
        output_dir = OUTPUT_GRID3_DIR

    assemble_africa(output_dir=output_dir, dry_run=args.dry_run, verbose=args.verbose)


if __name__ == "__main__":
    main()
