"""
Tippecanoe configuration template for layer-specific settings.

Simple 1:1 mapping between layers and their optimized tippecanoe parameters.
Import this into runCreateTiles.py to get settings for each layer.

Usage:
    from tippecanoe import get_layer_settings
    settings = get_layer_settings('buildings.fgb')  # Automatically matches 'buildings.geojsonseq'
    
Note: get_layer_settings() matches on base filename, ignoring extensions.
      So 'buildings.fgb' will match 'buildings.geojsonseq' in LAYER_SETTINGS.

Shared Boundary Handling:
    Administrative layers (health_areas, health_zones, provinces) use:
    - --no-polygon-splitting: Keeps polygons intact across tile boundaries
    - --no-simplification-of-shared-nodes: Ensures shared boundaries are simplified 
      identically in adjacent features (replaces deprecated --detect-shared-borders)
    - --coalesce-densest-as-needed: Merges features while maintaining coverage
    
    This creates properly nested boundary polygons where adjacent administrative
    units share exact boundary coordinates, similar to TopoJSON topology.
"""

# ---------------------------------------------------------------------------
# Profiles: named collections of tippecanoe settings for each thematic layer type.
# LAYER_GROUPS reference profiles via "profile" key; get_layer_settings() uses
# SOURCE_DIR_PROFILES to fall back to a profile when no filename match exists.
# ---------------------------------------------------------------------------
PROFILES = {
    "boundaries": {
        "description": "Administrative and operational boundary polygons",
        "polygon_settings": [
            "--no-polygon-splitting",
            "--no-simplification-of-shared-nodes",
            "--simplification=2",
            "--simplify-only-low-zooms",
            "--low-detail=10",
            "--no-tiny-polygon-reduction",
            "--extend-zooms-if-still-dropping-maximum=16",
            "--no-feature-limit",
            "--coalesce-densest-as-needed",
        ],
        "point_settings": [
            "--drop-rate=0",
            "--no-feature-limit",
            "--no-tile-size-limit",
        ],
    },
    "POI": {
        "description": "Point features (health facilities, settlement names, and other toponyms)",
        "settings": [
            # "--drop-rate=0.0",
            # "--no-feature-limit",
            "--no-tile-size-limit",
            "--extend-zooms-if-still-dropping",
            "--cluster-densest-as-needed",
            "-Bg",
            "-zg"
        ],
    },
    "settlement_extents": {
        "description": "Settlement extent polygons",
        "settings": [
            "--hilbert",
            "--no-feature-limit",
            "--no-simplification-of-shared-nodes",
            "--coalesce-densest-as-needed",
            "--gamma=1.4",
            "--drop-rate=0.3",
            "--simplification=2",
            "--minimum-zoom=7",
            "--extend-zooms-if-still-dropping-maximum=15",
            "--maximum-zoom=15",
            "--grid-low-zooms",
            "--calculate-feature-density",
            "-D8"
        ],
    },
}

# Maps exact scratch subdirectory names -> profile keys.
# Add a new entry here whenever a new source subdirectory is created.
SOURCE_DIR_PROFILES = {
    "GRID3_boundaries":      "boundaries",
    "GRID3_POIs":            "POI",
    "GRID3_settlementExtents": "settlement_extents",
}

    
# ---------------------------------------------------------------------------
# Layer groups: files processed together in one tippecanoe call so that
# --no-simplification-of-shared-nodes can detect shared boundary nodes
# across layers (e.g. provinces and health_zones sharing border coordinates).
#
# polygon_layers / point_layers are processed in separate tippecanoe
# invocations (different tile-size strategies) then merged with tile-join.
# ---------------------------------------------------------------------------
LAYER_GROUPS = {
    # ── Boundaries COD: all DRC admin levels in one multi-layer pmtile ──
    # Single invocation so --no-simplification-of-shared-nodes sees all levels.
    "GRID3_COD_boundaries": {
        "output_stem": "GRID3_COD_boundaries",
        "profile": "boundaries",

        # (filename, layer-name-in-tile, minzoom, maxzoom)
        "polygon_layers": [
            ("GRID3_COD_provinces_v8_0.fgb",    "GRID3-COD-province-v8-0",   0, 16),
            ("GRID3_COD_antenne_v8_0.fgb",       "GRID3-COD-antenne-v8-0",    0, 16),
            ("GRID3_COD_health_zones_v8_0.fgb",  "GRID3-COD-zonesante-v8-0",  0, 16),
            ("GRID3_COD_health_areas_v8_0.fgb",  "GRID3-COD-airesante-v8-0",  0, 16),
        ],
        "point_layers": [
            ("GRID3_COD_provinces_v8_0_centroids.fgb",   "GRID3-COD-province-v8-0-centroids",   0, 16),
            ("GRID3_COD_antenne_v8_0_centroids.fgb",      "GRID3-COD-antenne-v8-0-centroids",    0, 16),
            ("GRID3_COD_health_zones_v8_0_centroids.fgb", "GRID3-COD-zonesante-v8-0-centroids",  0, 16),
            ("GRID3_COD_health_areas_v8_0_centroids.fgb", "GRID3-COD-airesante-v8-0-centroids",  0, 16),
        ],
    },

    # ── Boundaries NGA: all Nigeria operational admin levels ──
    "GRID3_NGA_boundaries": {
        "output_stem": "GRID3_NGA_boundaries",
        "profile": "boundaries",

        "polygon_layers": [
            ("GRID3_NGA_operational_states_v2_0.fgb", "GRID3-NGA-operational-states-v2-0", 0, 16),
            ("GRID3_NGA_operational_LGAs_v2_0.fgb",   "GRID3-NGA-operational-LGAs-v2-0",   0, 16),
            ("GRID3_NGA_operational_wards_v2_0.fgb",  "GRID3-NGA-operational-wards-v2-0",  0, 16),
        ],
        # No centroid files available yet — add below when generated
        "point_layers": [
            ("GRID3_NGA_operational_states_v2_0_centroids.fgb", "GRID3-NGA-operational-states-v2-0-centroids", 0, 16),
            ("GRID3_NGA_operational_LGAs_v2_0_centroids.fgb",   "GRID3-NGA-operational-LGAs-v2-0-centroids",   0, 16),
            ("GRID3_NGA_operational_wards_v2_0_centroids.fgb",  "GRID3-NGA-operational-wards-v2-0-centroids",  0, 16),
            ],
    },

    # ── Settlement extents COD ──
    "GRID3_COD_settlementExtents": {
        "output_stem": "GRID3_COD_settlementExtents",
        "profile": "settlement_extents",

        "polygon_layers": [
            ("GRID3_COD_settlement_extents_v3_1.fgb", "GRID3-COD-settlement-extents-v3-1", 7, 15),
        ],
        "point_layers": [],
    },

    # ── Settlement extents NGA: both versions as separate layers ──
    # v4.0 = settlement blocks (very dense, z13+); v3.0 = classic extents (z7+)
    "GRID3_NGA_settlementExtents": {
        "output_stem": "GRID3_NGA_settlementExtents",
        "profile": "settlement_extents",

        "polygon_layers": [
            ("GRID3_NGA_settlement_extents_v3_0.fgb", "GRID3-NGA-settlement-extents-v3-0",  7, 14),
            ("GRID3_NGA_settlement_extents_v4_0.fgb", "GRID3-NGA-settlement-extents-v4-0", 13, 16),
        ],
        "point_layers": [],
    },

    # ── POIs COD: health facilities + settlement names ──
    "GRID3_COD_POIs": {
        "output_stem": "GRID3_COD_POIs",
        "profile": "POI",

        "polygon_layers": [],
        "point_layers": [
            ("GRID3_COD_health_facilities_v8_0.fgb", "GRID3-COD-health-facilities-v8-0", 5, 18),
            ("GRID3_COD_settlement_names_v8_0.fgb",   "GRID3-COD-settlement-names-v8-0",  5, 18),
        ],
    },

    # ── POIs NGA: add filenames as data is acquired ──
    "GRID3_NGA_POIs": {
        "output_stem": "GRID3_NGA_POIs",
        "profile": "POI",

        "polygon_layers": [],
        "point_layers": [
            # ("GRID3_NGA_settlement_names_v8_0.fgb", "GRID3-NGA-settlement-names-v8-0", 5, 18),
        ],
    },
}


# Per-file tippecanoe overrides for one-off layers not covered by LAYER_GROUPS.
# All current GRID3 layers route through LAYER_GROUPS + PROFILES instead.
LAYER_SETTINGS = {}


# ---------------------------------------------------------------------------
# Layer metadata: loaded lazily from layer_metadata.json (same directory).
# Maps layer name → {title, doi, license, source, ...}.
# ---------------------------------------------------------------------------
_LAYER_METADATA_CACHE = None

def _get_layer_metadata():
    """Return the layer_metadata.json dict, loading it once on first call."""
    global _LAYER_METADATA_CACHE
    if _LAYER_METADATA_CACHE is None:
        import json as _json
        from pathlib import Path as _Path
        p = _Path(__file__).with_name('layer_metadata.json')
        _LAYER_METADATA_CACHE = _json.load(open(p)) if p.exists() else {}
    return _LAYER_METADATA_CACHE


def build_tippecanoe_group_command(group_name, layer_tuples, output_file,
                                   layer_kind="polygon", extent=None):
    """
    Build a tippecanoe command for a group of named layers using the -L JSON syntax.

    Unlike --named-layer, the -L JSON format supports per-layer minzoom/maxzoom
    control so each admin level only appears in the tiles where it is needed.

    Args:
        group_name (str):       Key in LAYER_GROUPS (used to fetch settings).
        layer_tuples (list):    [(filename, layer_name, minzoom, maxzoom, abs_path), ...]
                                abs_path is the resolved on-disk path to pass to tippecanoe.
        output_file (str):      Path to output PMTiles.
        layer_kind (str):       "polygon" or "point" — selects settings from LAYER_GROUPS.
        extent (tuple|None):    Optional (xmin, ymin, xmax, ymax) clipping box.

    Returns:
        list: Complete argv list for subprocess.
    """
    import json as _json

    group = LAYER_GROUPS[group_name]
    settings_key = f"{layer_kind}_settings"

    if layer_kind == "polygon":
        zoom_flags = ["-Z0", "-z16"]
    else:  # "point" — centroids and POI points; -Z0 covers states-level labels at z0
        zoom_flags = ["-Z0", "-z16"]

    # Resolve settings: profile defaults -> group-level overrides (concatenated;
    # tippecanoe uses last occurrence so group values win on duplicates).
    profile_settings = []
    profile_name = group.get("profile")
    if profile_name and profile_name in PROFILES:
        profile = PROFILES[profile_name]
        # polygon_kind -> polygon_settings; centroid_kind -> centroid_settings;
        # fall back to generic "settings" key (used by point-only profiles).
        profile_settings = list(profile.get(settings_key, profile.get("settings", [])))

    group_override = group.get(settings_key, [])
    resolved_settings = profile_settings + group_override

    cmd = ["tippecanoe", "-fo", output_file] + zoom_flags
    cmd.extend(resolved_settings)
    cmd.append("-P")

    layer_meta = _get_layer_metadata()
    for _, layer_name, minzoom, maxzoom, abs_path in layer_tuples:
        spec = {
            "file":    str(abs_path),
            "layer":   layer_name,
            "minzoom": minzoom,
            "maxzoom": maxzoom,
        }
        m = layer_meta.get(layer_name)
        if m:
            # Compact JSON description stored in tile metadata; omit empty fields
            spec["description"] = _json.dumps(
                {k: v for k, v in m.items() if v and not k.startswith('_')},
                separators=(',', ':')
            )
        cmd.extend(["-L", _json.dumps(spec)])

    if extent:
        xmin, ymin, xmax, ymax = extent
        cmd.extend(["--clip-bounding-box", f"{xmin},{ymin},{xmax},{ymax}"])

    return cmd


# Base tippecanoe command flags that apply to all layers
BASE_COMMAND = [
    # '--buffer=8',
    '-z16',
    '-Bg',
    '--no-tile-size-limit', #temp
    # '--drop-smallest',
    # '--maximum-tile-bytes=2097152',  # default for all layers
    # '--preserve-input-order',
    '--coalesce-densest-as-needed',
    # '--drop-fraction-as-needed',
    # '--drop-densest-as-needed',  # Added for better tile size management
    '-P'  # Show progress
]

def get_layer_settings(filename, source_dir=None):
    """
    Get tippecanoe settings for a specific layer file.

    Extension-agnostic but requires exact base name match.
    'buildings.fgb' will match 'buildings.geojsonseq' settings.
    'land.fgb' will NOT match 'land_residential.fgb' settings.

    Lookup priority:
    1. Exact base-name match in LAYER_SETTINGS
    2. Parent directory name matched against SOURCE_DIR_PROFILES -> PROFILES["settings"]
    3. Empty list (caller falls back to geometry-detection heuristics)

    Args:
        filename (str): Name of the layer file
        source_dir (str|Path|None): Parent directory of the file (used for profile fallback)

    Returns:
        list: Tippecanoe command arguments for this layer
    """
    import os

    # 1. Exact base name match in LAYER_SETTINGS
    base_name = os.path.splitext(filename)[0]
    for template_filename, settings in LAYER_SETTINGS.items():
        template_base = os.path.splitext(template_filename)[0]
        if base_name == template_base:
            return settings

    # 2. Source directory -> profile fallback (exact directory name match)
    if source_dir is not None:
        dir_name = os.path.basename(os.path.normpath(str(source_dir)))
        profile_name = SOURCE_DIR_PROFILES.get(dir_name)
        if profile_name:
            profile = PROFILES.get(profile_name, {})
            # Prefer generic "settings"; polygon_settings is for group commands
            return list(profile.get("settings", profile.get("polygon_settings", [])))

    return []

def extract_cartography_zoom_range(input_file):
    """
    Extract min_zoom and max_zoom from Overture cartography properties.
    
    Reads the first 1000 features from a FlatGeobuf/GeoJSON file and finds
    the min/max zoom levels. Supports both flattened columns (min_zoom, max_zoom)
    from DuckDB extraction or nested cartography struct.
    
    Also checks for sort_key and level properties which are useful for z-ordering
    in the rendering pipeline.
    
    Args:
        input_file (str): Path to input file (FlatGeobuf, GeoJSON, or GeoJSONSeq)
        
    Returns:
        tuple: (min_zoom, max_zoom) or (None, None) if not found
    """
    import os
    try:
        file_ext = os.path.splitext(input_file)[1].lower()
        
        if file_ext == '.fgb':
            # Use fiona for FlatGeobuf (streaming, efficient)
            try:
                import fiona
                min_zoom, max_zoom = None, None
                sample_count = 0
                max_samples = 1000
                
                with fiona.open(input_file, 'r') as src:
                    for feature in src:
                        if sample_count >= max_samples:
                            break
                        
                        props = feature.get('properties', {})
                        
                        # Try flattened columns first (from DuckDB extraction)
                        feat_min = props.get('min_zoom')
                        feat_max = props.get('max_zoom')
                        
                        # Fall back to nested cartography struct
                        if feat_min is None or feat_max is None:
                            cartography = props.get('cartography', {})
                            if isinstance(cartography, dict):
                                feat_min = feat_min or cartography.get('min_zoom')
                                feat_max = feat_max or cartography.get('max_zoom')
                        
                        if feat_min is not None:
                            min_zoom = feat_min if min_zoom is None else min(min_zoom, feat_min)
                        if feat_max is not None:
                            max_zoom = feat_max if max_zoom is None else max(max_zoom, feat_max)
                        
                        sample_count += 1
                
                return (min_zoom, max_zoom)
            except ImportError:
                pass  # Fall through to return None
        
        elif file_ext in ['.geojson', '.json', '.geojsonseq']:
            # Handle GeoJSON/GeoJSONSeq
            import json
            min_zoom, max_zoom = None, None
            sample_count = 0
            max_samples = 1000
            
            with open(input_file, 'r') as f:
                if file_ext == '.geojsonseq':
                    # Line-delimited GeoJSON
                    for line in f:
                        if sample_count >= max_samples:
                            break
                        try:
                            feature = json.loads(line.strip())
                            props = feature.get('properties', {})
                            
                            # Try flattened columns first
                            feat_min = props.get('min_zoom')
                            feat_max = props.get('max_zoom')
                            
                            # Fall back to nested cartography struct
                            if feat_min is None or feat_max is None:
                                cartography = props.get('cartography', {})
                                if isinstance(cartography, dict):
                                    feat_min = feat_min or cartography.get('min_zoom')
                                    feat_max = feat_max or cartography.get('max_zoom')
                            
                            if feat_min is not None:
                                min_zoom = feat_min if min_zoom is None else min(min_zoom, feat_min)
                            if feat_max is not None:
                                max_zoom = feat_max if max_zoom is None else max(max_zoom, feat_max)
                            
                            sample_count += 1
                        except json.JSONDecodeError:
                            continue
                else:
                    # Standard GeoJSON
                    data = json.load(f)
                    features = data.get('features', [])
                    
                    for feature in features[:max_samples]:
                        props = feature.get('properties', {})
                        
                        # Try flattened columns first
                        feat_min = props.get('min_zoom')
                        feat_max = props.get('max_zoom')
                        
                        # Fall back to nested cartography struct
                        if feat_min is None or feat_max is None:
                            cartography = props.get('cartography', {})
                            if isinstance(cartography, dict):
                                feat_min = feat_min or cartography.get('min_zoom')
                                feat_max = feat_max or cartography.get('max_zoom')
                        
                        if feat_min is not None:
                            min_zoom = feat_min if min_zoom is None else min(min_zoom, feat_min)
                        if feat_max is not None:
                            max_zoom = feat_max if max_zoom is None else max(max_zoom, feat_max)
            
            return (min_zoom, max_zoom)
    
    except Exception as e:
        # Silently fail - not all layers have cartography properties
        pass
    
    return (None, None)


def build_tippecanoe_command(input_file, output_file, layer_name, extent=None, use_overture_zooms=True):
    """
    Build complete tippecanoe command for a layer.
    
    Automatically extracts cartography properties (min_zoom, max_zoom, sort_key) and level
    from Overture Maps data when available. These properties are used for:
    - min_zoom/max_zoom: Optimal zoom range for each feature
    - sort_key: Z-ordering/drawing priority within tiles
    - level: Vertical level for multi-level features (buildings, infrastructure)
    
    All these properties are preserved in the output PMTiles for use by the map renderer.
    
    Args:
        input_file (str): Path to input GeoJSON/GeoJSONSeq file
        output_file (str): Path to output PMTiles file  
        layer_name (str): Layer name for the tiles
        extent (tuple): Optional bounding box (xmin, ymin, xmax, ymax)
        use_overture_zooms (bool): If True, extract and use zoom levels from Overture cartography properties
        
    Returns:
        list: Complete command arguments for subprocess
    """
    import os
    
    # Convert Windows paths to WSL format if needed
    def to_wsl_path(path):
        if len(path) >= 2 and path[1] == ':':
            drive = path[0].lower()
            rest = path[2:].replace('\\', '/')
            return f'/mnt/{drive}{rest}'
        return path
    
    input_file = to_wsl_path(input_file)
    output_file = to_wsl_path(output_file)
    
    filename = os.path.basename(input_file)
    source_dir = os.path.dirname(input_file)

    # Start with base command
    cmd = ['tippecanoe', '-fo', output_file, '-l', layer_name] + BASE_COMMAND

    # Add layer-specific settings (source_dir enables profile fallback for ungrouped files)
    layer_settings = get_layer_settings(filename, source_dir=source_dir)
    cmd.extend(layer_settings)
    
    # Try to extract and apply Overture cartography zoom levels
    if use_overture_zooms:
        min_zoom, max_zoom = extract_cartography_zoom_range(input_file)
        
        if min_zoom is not None or max_zoom is not None:
            # Check if layer_settings already has zoom constraints
            has_min_zoom = any('--minimum-zoom' in str(s) for s in layer_settings)
            has_max_zoom = any('--maximum-zoom' in str(s) for s in layer_settings)
            
            # Apply Overture zoom levels if not already constrained by layer settings
            if min_zoom is not None and not has_min_zoom:
                cmd.extend(['--minimum-zoom', str(min_zoom)])
                print(f"  ℹ Using Overture min_zoom={min_zoom} for {layer_name}")
            
            if max_zoom is not None and not has_max_zoom:
                cmd.extend(['--maximum-zoom', str(max_zoom)])
                print(f"  ℹ Using Overture max_zoom={max_zoom} for {layer_name}")
    
    # Add extent clipping if provided
    if extent:
        xmin, ymin, xmax, ymax = extent
        cmd.extend(['--clip-bounding-box', f'{xmin},{ymin},{xmax},{ymax}'])
    
    # Add input file
    cmd.append(input_file)
    
    return cmd
