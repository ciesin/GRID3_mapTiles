#!/usr/bin/env python3
"""
runCreateTiles.py - Convert geospatial data to PMTiles using Tippecanoe

This module handles the conversion of FlatGeobuf/GeoJSON/GeoJSONSeq files to PMTiles
using optimized Tippecanoe settings. Can be used standalone or imported
into other scripts like Jupyter notebooks.

Supported input formats (in priority order):
- FlatGeobuf (.fgb) - RECOMMENDED for large datasets (streaming, spatial index)
- GeoJSONSeq (.geojsonseq) - Good for medium datasets (line-delimited)
- GeoJSON (.geojson) - Small datasets only (loads entire file into memory)

For GeoParquet files: Convert to FlatGeobuf first using convertToFlatGeobuf.py
This provides optimal performance for large-scale processing (continent/world-scale).

Usage:
    python runCreateTiles.py --extent="20.0,-7.0,26.0,-3.0" --input-dir="/path/to/data"
    
    # From another script:
    from runCreateTiles import process_to_tiles
    process_to_tiles(extent=(20.0, -7.0, 26.0, -3.0), input_dirs=["/path/to/data"])
"""

import os
import subprocess
import fnmatch
from tqdm import tqdm
import sys
import json
import argparse
from pathlib import Path
import importlib
from concurrent.futures import ThreadPoolExecutor, as_completed

# Allow DATA_DISK to be injected via environment variable (same logic as config.py)
def _resolve_data_disk():
    val = os.environ.get("DATA_DISK", "/tmp/grid3_tiles")
    if val.startswith(('.', '..')):
        return (Path(__file__).resolve().parent.parent.parent / val).resolve()
    return Path(val)

def _import_tippecanoe_template():
    """Import tippecanoe template; re-called in worker processes if needed."""
    try:
        scripts_dir = Path(__file__).resolve().parent
        if str(scripts_dir) not in sys.path:
            sys.path.insert(0, str(scripts_dir))
        tippecanoe_mod = importlib.import_module('tippecanoe')
        return (
            getattr(tippecanoe_mod, 'LAYER_GROUPS', {}),
            getattr(tippecanoe_mod, 'build_tippecanoe_group_command', None),
            getattr(tippecanoe_mod, 'sort_archives_by_theme', None),
        )
    except Exception:
        return {}, None, None

LAYER_GROUPS, build_tippecanoe_group_command, sort_archives_by_theme = _import_tippecanoe_template()

# Set up project paths - aligned with config.py
PROJECT_ROOT       = Path(__file__).resolve().parent.parent
DATA_DISK          = _resolve_data_disk()
DATA_DIR           = DATA_DISK / "data"
INPUT_DIR          = DATA_DIR  / "1-input"
GRID3_INPUT_DIR    = INPUT_DIR / "grid3"
OVERTURE_INPUT_DIR = INPUT_DIR / "overture"
SCRATCH_DIR        = DATA_DIR  / "2-scratch"
SCRATCH_GRID3_DIR  = SCRATCH_DIR / "grid3"
OUTPUT_DIR         = DATA_DIR  / "3-pmtiles"
OUTPUT_GRID3_DIR   = OUTPUT_DIR / "grid3"
TILE_DIR           = OUTPUT_GRID3_DIR  # primary tile output
PUBLIC_TILES_DIR   = PROJECT_ROOT.parent / "2-viewer" / "public" / "tiles"


def _extract_iso3(group_name: str) -> str:
    """Extract ISO3 country code from a LAYER_GROUP name like 'GRID3_COD_boundaries'."""
    parts = group_name.split("_")
    return parts[1] if len(parts) >= 3 else group_name


def process_file_group(group_name, file_path_map, extent=None, output_dir=None):
    """Process a named group of FGB files into a single multi-layer PMTiles.

    All polygon layers are processed in one tippecanoe invocation so that
    --no-simplification-of-shared-nodes identifies shared boundary nodes
    across admin levels.  Centroid layers are processed in a separate
    invocation (different tile-size strategy) and merged with tile-join.

    Args:
        group_name (str):      Key in LAYER_GROUPS.
        file_path_map (dict):  {filename: Path} for every file in scratch dir.
        extent (tuple|None):   Optional (xmin, ymin, xmax, ymax).
        output_dir (str|None): Destination directory for the output PMTiles.

    Returns:
        dict: {"success": bool, "message": str, "output_file": Path, ...}
    """
    global LAYER_GROUPS, build_tippecanoe_group_command, sort_archives_by_theme
    if not LAYER_GROUPS or build_tippecanoe_group_command is None:
        LAYER_GROUPS, build_tippecanoe_group_command, sort_archives_by_theme = _import_tippecanoe_template()
    if build_tippecanoe_group_command is None:
        return {"success": False, "message": "Could not import build_tippecanoe_group_command from tippecanoe.py"}

    if group_name not in LAYER_GROUPS:
        return {"success": False, "message": f"Unknown group: {group_name}"}

    group = LAYER_GROUPS[group_name]
    output_stem = group["output_stem"]

    tile_dir = Path(output_dir) if output_dir else TILE_DIR
    tile_dir.mkdir(parents=True, exist_ok=True)

    def _resolve_layers(layer_key):
        """Return [(filename, layer_name, minzoom, maxzoom, abs_path), ...] or None on missing."""
        resolved = []
        for filename, layer_name, minzoom, maxzoom in group.get(layer_key, []):
            abs_path = file_path_map.get(filename)
            if abs_path is None or not abs_path.exists():
                return None, filename
            resolved.append((filename, layer_name, minzoom, maxzoom, abs_path))
        return resolved, None

    polygon_tuples, missing = _resolve_layers("polygon_layers")
    if missing:
        return {"success": False, "message": f"Missing polygon layer for group '{group_name}': {missing}"}

    line_tuples, missing = _resolve_layers("line_layers")
    if missing:
        return {"success": False, "message": f"Missing line layer for group '{group_name}': {missing}"}

    point_tuples, missing = _resolve_layers("point_layers")
    if missing:
        return {"success": False, "message": f"Missing point layer for group '{group_name}': {missing}"}

    final_path = tile_dir / f"{output_stem}.pmtiles"
    # Intermediate archives go to the ISO3 scratch _temp/ dir so
    # the output tile dir stays clean during processing.
    iso3 = _extract_iso3(group_name).lower()
    tmp_dir = SCRATCH_GRID3_DIR / iso3 / "_temp"
    tmp_dir.mkdir(parents=True, exist_ok=True)
    tmp_polygon = tmp_dir / f"_tmp_{output_stem}_polygons.pmtiles"
    tmp_lines   = tmp_dir / f"_tmp_{output_stem}_lines.pmtiles"
    tmp_points  = tmp_dir / f"_tmp_{output_stem}_points.pmtiles"

    def _run(cmd):
        subprocess.run(cmd, check=True)

    try:
        # ── Step 1: polygon layers (skipped for line/point-only groups) ─────
        if polygon_tuples:
            cmd = build_tippecanoe_group_command(
                group_name, polygon_tuples, str(tmp_polygon),
                layer_kind="polygon", extent=extent,
            )
            _run(cmd)

        # ── Step 2: line layers (roads and other linear features) ────────────
        if line_tuples:
            cmd = build_tippecanoe_group_command(
                group_name, line_tuples, str(tmp_lines),
                layer_kind="line", extent=extent,
            )
            _run(cmd)

        # ── Step 3: point layers ─────────────────────────────────────────────
        if point_tuples:
            cmd = build_tippecanoe_group_command(
                group_name, point_tuples, str(tmp_points),
                layer_kind="point", extent=extent,
            )
            _run(cmd)

        # ── Step 4: merge or promote single archive ──────────────────────────
        merge_inputs = (
            ([str(tmp_polygon)] if polygon_tuples else []) +
            ([str(tmp_lines)]   if line_tuples   else []) +
            ([str(tmp_points)]  if point_tuples  else [])
        )

        if len(merge_inputs) > 1:
            join_cmd = ["tile-join", "-fo", str(final_path), "--no-tile-size-limit"]
            if group.get("name"):
                join_cmd.extend(["-n", group["name"]])
            if group.get("attribution"):
                join_cmd.extend(["-A", group["attribution"]])
            join_cmd += merge_inputs
            _run(join_cmd)
        elif merge_inputs:
            # Only one archive produced — move it directly to the final path
            import shutil as _shutil
            _shutil.move(merge_inputs[0], str(final_path))

        layer_count = (
            (len(polygon_tuples) if polygon_tuples else 0)
            + (len(line_tuples)  if line_tuples  else 0)
            + (len(point_tuples) if point_tuples else 0)
        )
        return {
            "success": True,
            "message": f"Group tiles generated: {final_path.name}",
            "output_file": final_path,
            "group_name": group_name,
            "layer_count": layer_count,
        }

    except subprocess.CalledProcessError as e:
        return {
            "success": False,
            "message": f"Tippecanoe/tile-join error (exit {e.returncode})",
        }
    except Exception as e:
        return {
            "success": False,
            "message": f"Error: {str(e)}",
        }
    finally:
        for tmp in (tmp_polygon, tmp_lines, tmp_points):
            if tmp.exists():
                tmp.unlink()


def process_to_tiles(extent=None, input_dirs=None, filter_pattern=None,
                    output_dir=None, parallel=False, max_parallel_groups=None,
                    verbose=True, tiling_profile="iso3_theme",
                    keep_theme_files=True):
    """Process FlatGeobuf/GeoJSONSeq/GeoJSON files into PMTiles

    Prioritizes FlatGeobuf (.fgb) files for optimal performance with large datasets.
    For GeoParquet files, convert to FlatGeobuf first using convertToFlatGeobuf.py

    Args:
        extent (tuple): Bounding box as (xmin, ymin, xmax, ymax)
        input_dirs (list): List of directories to search for input files
        filter_pattern (str): Only process files matching this pattern (e.g., "roads*" or "*.fgb")")
        output_dir (str): Directory to write output PMTiles (default: TILE_DIR)
        parallel (bool): Run layer groups concurrently (default: True)
        max_parallel_groups (int|None): Max concurrent tippecanoe invocations.
            None = all groups at once (good default for multi-core machines).
        verbose (bool): Show progress information (default: True)
        tiling_profile (str): Aggregation level for output archives:
            "iso3_theme" (default) — one PMTiles per country+theme (existing behaviour)
            "iso3"                 — one PMTiles per country (tile-join merge)
            "all"                  — single GRID3.pmtiles for all countries/themes
        keep_theme_files (bool): When tiling_profile is "iso3" or "all", keep the
            intermediate per-theme archives (default True).  Set False to remove them
            after the merge step completes.

    Returns:
        dict: Results including processed files and any errors
    """
    if verbose:
        print("=== PROCESSING TO TILES ===")
    
    # Default input directories - aligned with notebook CONFIG
    if input_dirs is None:
        input_dirs = [SCRATCH_GRID3_DIR]
    else:
        input_dirs = [Path(d) for d in input_dirs]
    
    # Ensure directories exist
    for data_dir in input_dirs:
        Path(data_dir).mkdir(parents=True, exist_ok=True)
    
    if output_dir:
        Path(output_dir).mkdir(parents=True, exist_ok=True)
    else:
        TILE_DIR.mkdir(parents=True, exist_ok=True)
    
    # Find all GeoJSON/GeoJSONSeq/FlatGeobuf files in data directories
    geospatial_files = []
    
    # Search in all input directories (including subdirs) for supported formats.
    # rglob discovers files in scratch/admin/, scratch/poi/, etc. automatically.
    for data_dir in input_dirs:
        data_dir = Path(data_dir)
        if data_dir.exists():
            for pattern in ['*.fgb', '*.geojsonseq', '*.geojson']:
                geospatial_files.extend(
                    f for f in data_dir.rglob(pattern)
                    if "_filtered" not in f.parts and "_temp" not in f.parts
                )
    
    # Apply filter if provided
    if filter_pattern:
        filtered_files = []
        for f in geospatial_files:
            if fnmatch.fnmatch(f.name, filter_pattern):
                filtered_files.append(f)
        geospatial_files = filtered_files
    
    if not geospatial_files:
        message = "No geospatial files found (FlatGeobuf/GeoJSONSeq/GeoJSON)"
        if filter_pattern:
            message += f" matching pattern '{filter_pattern}'"
        print(message)
        return {"success": False, "message": message, "processed_files": [], "errors": []}

    # ── Group detection ───────────────────────────────────────────────────────
    # Files that are members of a complete LAYER_GROUP are processed together
    # in one tippecanoe call; remaining files are processed individually.
    global LAYER_GROUPS
    if not LAYER_GROUPS:
        LAYER_GROUPS, _ = _import_tippecanoe_template()

    file_path_map = {}
    for f in geospatial_files:
        if f.name in file_path_map:
            print(f"  Warning: duplicate filename '{f.name}' in multiple subdirs; "
                  f"using {f}, ignoring {file_path_map[f.name]}")
        file_path_map[f.name] = f

    groups_to_process = {}
    for gname, gconfig in LAYER_GROUPS.items():
        all_members = (
            [fn for fn, *_ in gconfig.get("polygon_layers", [])]
            + [fn for fn, *_ in gconfig.get("line_layers", [])]
            + [fn for fn, *_ in gconfig.get("point_layers", [])]
        )
        if all(fn in file_path_map for fn in all_members):
            groups_to_process[gname] = gconfig

    group_member_names = {
        fn
        for gname in groups_to_process
        for key in ("polygon_layers", "line_layers", "point_layers")
        for fn, *_ in LAYER_GROUPS[gname].get(key, [])
    }

    # Files not matched to any group are skipped (group paradigm only)
    unmatched = [f for f in geospatial_files if f.name not in group_member_names]
    if unmatched and verbose:
        print(f"  Note: {len(unmatched)} file(s) not in any LAYER_GROUP — skipped:")
        for f in unmatched:
            print(f"    {f.name}")

    if verbose:
        type_label = {'.fgb': 'FlatGeobuf', '.geojsonseq': 'GeoJSONSeq', '.geojson': 'GeoJSON'}
        group_files = [f for f in geospatial_files if f.name in group_member_names]
        print(f"Found {len(group_files)} file(s) assigned to groups"
              + (f" ({len(unmatched)} unmatched, skipped)" if unmatched else "") + ":")
        for f in group_files:
            print(f"  {f.name} ({type_label.get(f.suffix, 'Unknown')})")
        for gname in groups_to_process:
            print(f"  → group '{gname}': {LAYER_GROUPS[gname]['output_stem']}.pmtiles")

    # ── Determine where individual group archives land ────────────────────────
    # iso3_theme: write to 3-pmtiles/grid3/{iso3}/ (one subdir per country).
    # iso3 / all: write per-theme archives to 2-scratch/grid3/{iso3}/_temp/,
    #             then tile-join into merged files in the final tile dir.
    final_tile_dir = Path(output_dir) if output_dir else TILE_DIR
    final_tile_dir.mkdir(parents=True, exist_ok=True)

    def _group_output_dir(gname: str) -> Path:
        """Resolve the per-group output directory based on the tiling profile."""
        iso3 = _extract_iso3(gname).lower()
        if tiling_profile == "iso3_theme":
            d = final_tile_dir / iso3
        else:
            d = SCRATCH_GRID3_DIR / iso3 / "_temp"
        d.mkdir(parents=True, exist_ok=True)
        return d

    results = {
        "success": True,
        "processed_files": [],
        "errors": [],
        "total_files": len(geospatial_files),
        "merged_files": [],
    }

    def _handle_group_result(gname, result):
        if result["success"]:
            results["processed_files"].append({
                "input_file": f"[group:{gname}]",
                "output_file": result.get("output_file"),
                "group_name": gname,
            })
            if verbose:
                tqdm.write(f"✓ {gname} → {result.get('output_file', 'unknown')}")
        else:
            results["errors"].append({"file": f"[group:{gname}]", "error": result["message"]})
            if verbose:
                tqdm.write(f"✗ {gname}: {result['message']}")

    # ── Process groups — parallel when requested, sequential as fallback ──────
    if parallel and len(groups_to_process) > 1:
        workers = max_parallel_groups or len(groups_to_process)
        if verbose:
            print(f"\nProcessing {len(groups_to_process)} groups in parallel (max_workers={workers})...")
        with ThreadPoolExecutor(max_workers=workers) as executor:
            futures = {
                executor.submit(
                    process_file_group, gname, file_path_map, extent,
                    str(_group_output_dir(gname))
                ): gname
                for gname in groups_to_process
            }
            for future in as_completed(futures):
                gname = futures[future]
                _handle_group_result(gname, future.result())
    else:
        for gname in groups_to_process:
            if verbose:
                print(f"\nProcessing group '{gname}'...")
            _handle_group_result(
                gname,
                process_file_group(gname, file_path_map, extent,
                                   str(_group_output_dir(gname))),
            )

    # ── Post-process merge for iso3 / all profiles ────────────────────────────
    if tiling_profile != "iso3_theme" and results["processed_files"]:
        theme_paths = [
            entry["output_file"]
            for entry in results["processed_files"]
            if entry.get("output_file") and Path(entry["output_file"]).exists()
        ]

        def _pmtiles_maxzoom(path):
            """Return maxzoom from a PMTiles archive header, or None on failure."""
            try:
                out = subprocess.check_output(
                    ["pmtiles", "show", "--json", str(path)], stderr=subprocess.DEVNULL
                )
                return json.loads(out).get("maxzoom")
            except Exception:
                return None

        def _tile_join(output_path, inputs, name=None, description=None, attribution=None):
            # Probe maxzoom of each input so tile-join doesn't warn about mismatches.
            zooms = [z for z in (_pmtiles_maxzoom(p) for p in inputs) if z is not None]
            cmd = ["tile-join", "-fo", str(output_path), "--no-tile-size-limit"]
            if zooms:
                cmd += [f"-z{max(zooms)}"]
            # Set archive-level metadata explicitly so tile-join doesn't concatenate
            # input names/paths into the output name/description fields.
            if name:
                cmd += ["-n", name]
            if description:
                cmd += ["-N", description]
            if attribution:
                cmd += ["-A", attribution]
            cmd += [str(p) for p in inputs]
            try:
                subprocess.run(cmd, check=True)
                return True
            except subprocess.CalledProcessError as e:
                results["errors"].append({"file": str(output_path), "error": f"tile-join exit {e.returncode}"})
                return False

        # Resolve sort_archives_by_theme in case it wasn't imported at module load.
        _sort_fn = sort_archives_by_theme
        if _sort_fn is None:
            _, __, _sort_fn = _import_tippecanoe_template()
        if _sort_fn is None:
            _sort_fn = lambda x: list(x)   # fallback: identity

        if tiling_profile == "iso3":
            # Group theme archives by ISO3 prefix and merge each set in draw order.
            from collections import defaultdict as _defaultdict
            by_iso3 = _defaultdict(list)
            for p in theme_paths:
                iso3 = _extract_iso3(Path(p).stem)
                by_iso3[iso3].append(p)

            if verbose:
                print(f"\nMerging {len(theme_paths)} theme archive(s) into {len(by_iso3)} country file(s)...")

            for iso3, inputs in sorted(by_iso3.items()):
                inputs = _sort_fn(inputs)   # settlement_extents → roads → boundaries → POI
                merged = final_tile_dir / f"GRID3_{iso3}.pmtiles"
                if _tile_join(
                    merged, inputs,
                    name=f"GRID3 {iso3}",
                    description=f"GRID3 boundaries, settlement extents, and points of interest for {iso3}",
                    attribution="© GRID3, CIESIN Columbia University. See individual layer descriptions for DOIs and licenses.",
                ):
                    results["merged_files"].append(merged)
                    if verbose:
                        print(f"  ✓ GRID3_{iso3}.pmtiles ← {[Path(p).name for p in inputs]}")

        elif tiling_profile == "all":
            theme_paths = _sort_fn(theme_paths)
            if verbose:
                print(f"\nMerging {len(theme_paths)} theme archive(s) into GRID3.pmtiles...")
            merged = final_tile_dir / "GRID3.pmtiles"
            if _tile_join(
                merged, theme_paths,
                name="GRID3",
                description="GRID3 boundaries, settlement extents, and points of interest",
                attribution="© GRID3, CIESIN Columbia University. See individual layer descriptions for DOIs and licenses.",
            ):
                results["merged_files"].append(merged)
                if verbose:
                    print(f"  ✓ GRID3.pmtiles")

        # Clean up per-ISO3 _temp dirs unless the caller wants to keep intermediates.
        if not keep_theme_files:
            import shutil as _shutil
            cleaned = set()
            for entry in results["processed_files"]:
                out = entry.get("output_file")
                if out:
                    tmp = Path(out).parent
                    if tmp.name == "_temp" and tmp not in cleaned:
                        _shutil.rmtree(tmp, ignore_errors=True)
                        cleaned.add(tmp)
            if verbose and cleaned:
                for d in sorted(cleaned):
                    print(f"  Removed intermediate dir: {d}")

    # Set overall success status
    if results["errors"]:
        results["success"] = False

    if verbose:
        print(f"\n=== TILE PROCESSING COMPLETE ===")
        print(f"Profile: {tiling_profile}")
        print(f"Processed: {len(results['processed_files'])}/{results['total_files']} files")
        if results["merged_files"]:
            print(f"Merged archives: {len(results['merged_files'])}")
        if results["errors"]:
            print(f"Errors: {len(results['errors'])}")

    return results

def create_tilejson(tile_dir=None, extent=None, output_file=None):
    """Generate TileJSON for MapLibre integration
    
    Args:
        tile_dir (str|Path): Directory containing PMTiles files
        extent (tuple): Bounding box as (xmin, ymin, xmax, ymax)
        output_file (str|Path): Output TileJSON file path
    
    Returns:
        dict: TileJSON structure
    """
    if tile_dir is None:
        tile_dir = TILE_DIR
    else:
        tile_dir = Path(tile_dir)
    
    if extent is None:
        # Use a default extent if none provided
        extent = (-180, -85, 180, 85)
    
    if output_file is None:
        output_file = tile_dir / "tilejson.json"
    else:
        output_file = Path(output_file)
    
    xmin, ymin, xmax, ymax = extent
    
    # Base TileJSON structure
    tilejson = {
        "tilejson": "3.0.0",
        "name": "Basemap Tiles",
        "minzoom": 7,
        "maxzoom": 16,
        "bounds": [xmin, ymin, xmax, ymax],
        "tiles": [],
        "vector_layers": []
    }
    
    # Find all PMTiles files
    pmtiles_files = list(tile_dir.glob("*.pmtiles"))
    
    # Add each PMTiles file as a tile source
    for pmtiles_file in sorted(pmtiles_files):
        # Create relative URL
        tile_url = f"pmtiles://{pmtiles_file.name}"
        tilejson["tiles"].append(tile_url)
        
        # Add vector layer info
        layer_name = pmtiles_file.stem
        vector_layer = {
            "id": layer_name,
            "description": f"Layer: {layer_name}",
            "fields": {"id": "String", "name": "String"}  # Generic fields
        }
        tilejson["vector_layers"].append(vector_layer)
    
    # Write TileJSON file
    output_file.parent.mkdir(parents=True, exist_ok=True)
    with open(output_file, 'w') as f:
        json.dump(tilejson, f, indent=2)
    
    print(f"TileJSON created: {output_file}")
    print(f"Found {len(pmtiles_files)} PMTiles files")
    
    return tilejson

def main():
    """Main entry point for command line usage"""
    parser = argparse.ArgumentParser(
        description='Convert geospatial data to PMTiles using Tippecanoe',
        formatter_class=argparse.ArgumentDefaultsHelpFormatter
    )
    
    parser.add_argument('--extent', 
                        help='Extent as "xmin,ymin,xmax,ymax" in WGS84 coordinates')
    parser.add_argument('--input-dir', action='append',
                        help='Input directory to search for geospatial files (can be used multiple times)')
    parser.add_argument('--output-dir',
                        help='Output directory for PMTiles files')
    parser.add_argument('--filter',
                        help='Only process files matching this pattern (e.g., "roads*" or "*.fgb")')
    parser.add_argument('--create-tilejson', action='store_true',
                        help='Create TileJSON file after processing')
    parser.add_argument('--verbose', action='store_true', default=True,
                        help='Show detailed progress information')
    
    args = parser.parse_args()
    
    # Parse extent if provided
    extent = None
    if args.extent:
        try:
            extent_parts = args.extent.split(',')
            if len(extent_parts) != 4:
                raise ValueError("Extent must have 4 values")
            extent = tuple(float(x) for x in extent_parts)
        except ValueError as e:
            print(f"Error parsing extent: {e}")
            print("Extent format: xmin,ymin,xmax,ymax")
            sys.exit(1)
    
    # Process tiles
    results = process_to_tiles(
        extent=extent,
        input_dirs=args.input_dir,
        filter_pattern=args.filter,
        output_dir=args.output_dir,
        verbose=args.verbose
    )
    
    # Create TileJSON if requested
    if args.create_tilejson:
        create_tilejson(
            tile_dir=args.output_dir or TILE_DIR,
            extent=extent
        )
    
    # Report results
    if results["success"]:
        print(f"\nSuccessfully processed {len(results['processed_files'])} files")
    else:
        print(f"\nProcessing completed with {len(results['errors'])} errors:")
        for error in results["errors"]:
            print(f"  - {error['file']}: {error['error']}")
        sys.exit(1)

if __name__ == "__main__":
    main()
