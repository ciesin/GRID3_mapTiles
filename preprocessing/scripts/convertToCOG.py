#!/usr/bin/env python3
"""
convertToCOG.py - Convert GeoTIFFs to Cloud Optimized GeoTIFF (COG)

COG parameters follow https://cogeo.org/ and https://guide.cloudnativegeo.org/:
  - LZW compression, 512×512 block tiles, auto overviews
  - Metadata-first internal layout for efficient HTTP range requests

Usage:
    # Single folder
    python convertToCOG.py --input-dir /path/to/dataset

    # Loop through subfolders
    python convertToCOG.py --input-dir /path/to/root --recursive

    # Overwrite existing outputs
    python convertToCOG.py --input-dir /path --overwrite
"""

import sys
import gc
import time
import subprocess
import shutil
from pathlib import Path
from typing import Union, List, Tuple, Optional

try:
    from tqdm import tqdm
    HAS_TQDM = True
except ImportError:
    HAS_TQDM = False


COG_CREATION_OPTIONS = [
    "COMPRESS=LZW",
    "BLOCKSIZE=512",
    "OVERVIEW_LEVEL=AUTO",
    "OVERVIEWS=AUTO",
    "INTERLEAVE=PIXEL",
    "BIGTIFF=IF_SAFER",
]

TIF_SIDECAR_EXTENSIONS = [".aux", ".aux.xml", ".tif.aux", ".tif.ovr", ".ovr", ".prj", ".xml"]


def _check_gdal() -> Tuple[bool, str]:
    if shutil.which("gdal_translate") is None:
        return False, "gdal_translate not found on PATH — install GDAL"
    return True, "OK"


def _run_command(cmd: List[str]) -> Tuple[bool, str]:
    try:
        result = subprocess.run(cmd, capture_output=True, text=True, check=False)
        if result.returncode != 0:
            return False, result.stderr.strip() or result.stdout.strip()
        return True, result.stderr.strip()
    except FileNotFoundError as e:
        return False, str(e)


def _cleanup_sidecars(tif_path: Path, verbose: bool) -> int:
    removed = 0
    for ext in TIF_SIDECAR_EXTENSIONS:
        for candidate in (tif_path.parent / f"{tif_path.name}{ext}",
                          tif_path.parent / f"{tif_path.stem}{ext}"):
            if candidate.exists() and candidate != tif_path:
                candidate.unlink()
                removed += 1
                if verbose:
                    print(f"     Removed sidecar: {candidate.name}")
    return removed


def convert_tif_to_cog(
    input_path: Union[str, Path],
    output_path: Optional[Union[str, Path]] = None,
    overwrite: bool = False,
    cleanup_source: bool = False,
    verbose: bool = True,
) -> Tuple[bool, str, Optional[Path]]:
    """
    Convert a GeoTIFF to Cloud Optimized GeoTIFF (COG).

    Returns:
        Tuple of (success, message, output_path)
    """
    input_path = Path(input_path)

    if not input_path.exists():
        return False, f"Input not found: {input_path}", None

    if output_path is None:
        output_path = input_path.with_stem(input_path.stem + "_cog")
    else:
        output_path = Path(output_path)

    if output_path.exists() and not overwrite:
        if verbose:
            size_mb = output_path.stat().st_size / 1024 / 1024
            print(f"Skip {input_path.name} -> {output_path.name} ({size_mb:.1f} MB, exists)")
        return True, "Already exists", output_path

    output_path.parent.mkdir(parents=True, exist_ok=True)

    try:
        start_time = time.time()

        if verbose:
            size_mb = input_path.stat().st_size / 1024 / 1024
            print(f"\n{'='*70}")
            print(f"COG: {input_path.name}  ({size_mb:.1f} MB)")
            print(f"{'='*70}")

        cmd = ["gdal_translate", "-of", "COG"]
        for opt in COG_CREATION_OPTIONS:
            cmd += ["-co", opt]
        cmd += [str(input_path), str(output_path)]

        if verbose:
            print(f"  Running gdal_translate...", end="", flush=True)

        ok, stderr = _run_command(cmd)

        if not ok:
            if output_path.exists():
                output_path.unlink()
            if verbose:
                print(f"\n  gdal_translate failed:\n     {stderr}")
            return False, stderr, None

        elapsed = time.time() - start_time
        in_mb = input_path.stat().st_size / 1024 / 1024
        out_mb = output_path.stat().st_size / 1024 / 1024
        ratio = ((in_mb - out_mb) / in_mb * 100) if in_mb > 0 else 0

        if verbose:
            print(f"\r   Complete in {elapsed:.1f}s")
            print(f"     Input:  {in_mb:.1f} MB  ->  Output: {out_mb:.1f} MB  ({ratio:+.1f}%)")

        if cleanup_source:
            sidecars = _cleanup_sidecars(input_path, verbose)
            input_path.unlink()
            if verbose:
                print(f"     Removed source ({in_mb:.1f} MB) + {sidecars} sidecar(s)")

        if verbose:
            print(f"{'='*70}\n")

        return True, f"COG: {out_mb:.1f} MB", output_path

    except Exception as e:
        if output_path.exists():
            output_path.unlink()
        return False, f"{type(e).__name__}: {e}", None


def batch_convert_directory(
    input_dir: Union[str, Path],
    output_dir: Optional[Union[str, Path]] = None,
    recursive: bool = False,
    overwrite: bool = False,
    verbose: bool = True,
    cleanup_source: bool = False,
) -> dict:
    """
    Convert all GeoTIFFs in a directory (or subdirectories) to COG.

    Returns:
        dict with summary statistics
    """
    input_dir = Path(input_dir)

    ok, msg = _check_gdal()
    if not ok:
        print(f" {msg}")
        return {"success": False, "message": msg}

    if recursive:
        subdirs = sorted([d for d in input_dir.iterdir() if d.is_dir()]) or [input_dir]
    else:
        subdirs = [input_dir]

    results = {
        "success": True,
        "total_files": 0,
        "converted": 0,
        "skipped": 0,
        "errors": [],
        "output_files": [],
    }

    for folder in subdirs:
        out_root = Path(output_dir) / folder.name if output_dir else folder

        tif_files = sorted(
            f for f in folder.glob("*.tif") if "_cog" not in f.stem
        ) + sorted(
            f for f in folder.glob("*.tiff") if "_cog" not in f.stem
        )

        results["total_files"] += len(tif_files)

        if not tif_files:
            if verbose and len(subdirs) == 1:
                print(f"No TIF files found in {folder}")
            continue

        if verbose:
            print(f"\n{'='*70}")
            print(f"Folder: {folder.name}  ({len(tif_files)} TIF(s))")
            print(f"{'='*70}")

        iterator = (
            tqdm(tif_files, desc=folder.name)
            if (HAS_TQDM and len(tif_files) > 1 and verbose)
            else tif_files
        )

        for f in iterator:
            out_path = out_root / f.with_stem(f.stem + "_cog").name
            success, msg, out = convert_tif_to_cog(
                f, out_path,
                overwrite=overwrite,
                cleanup_source=cleanup_source,
                verbose=verbose and len(tif_files) == 1,
            )
            if success:
                if "Already exists" in msg:
                    results["skipped"] += 1
                else:
                    results["converted"] += 1
                    if out:
                        results["output_files"].append(out)
            else:
                results["errors"].append({"file": f.name, "error": msg})
                results["success"] = False

        gc.collect()

    if verbose:
        print(f"\n{'='*70}")
        print(f"SUMMARY")
        print(f"{'='*70}")
        print(f"   Total:    {results['total_files']}")
        print(f"   Done:     {results['converted']}")
        print(f"   Skipped:  {results['skipped']}")
        print(f"   Errors:   {len(results['errors'])}")
        if results["output_files"]:
            total_mb = sum(
                f.stat().st_size for f in results["output_files"] if f.exists()
            ) / 1024 / 1024
            print(f"   Output:   {total_mb:.1f} MB")
        for e in results["errors"]:
            print(f"   ERROR {e['file']}: {e['error']}")
        print(f"{'='*70}\n")

    return results


def main():
    import argparse

    parser = argparse.ArgumentParser(
        description="Convert GeoTIFFs to Cloud Optimized GeoTIFF (COG)"
    )
    parser.add_argument("--input-dir", required=True,
                        help="Input directory (or root directory with --recursive)")
    parser.add_argument("--output-dir", default=None,
                        help="Output directory root (default: same as input)")
    parser.add_argument("--recursive", action="store_true",
                        help="Process each immediate subdirectory of --input-dir")
    parser.add_argument("--overwrite", action="store_true",
                        help="Overwrite existing output files")
    parser.add_argument("--cleanup", action="store_true",
                        help="Remove source files after successful conversion")
    parser.add_argument("--quiet", action="store_true",
                        help="Suppress progress output")

    args = parser.parse_args()

    results = batch_convert_directory(
        input_dir=args.input_dir,
        output_dir=args.output_dir,
        recursive=args.recursive,
        overwrite=args.overwrite,
        verbose=not args.quiet,
        cleanup_source=args.cleanup,
    )

    sys.exit(0 if results.get("success") else 1)


if __name__ == "__main__":
    main()
