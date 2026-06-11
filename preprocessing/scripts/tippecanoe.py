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
            "--hilbert",
            "--no-polygon-splitting",
            "--no-simplification-of-shared-nodes",  # required: preserves shared borders across all levels in one invocation
            "--simplify-only-low-zooms",
            "--simplification=2",
            "--no-tiny-polygon-reduction",
            "--no-feature-limit",
            "--no-tile-size-limit",  # admin boundaries must be geometrically complete — never truncate
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
            "--drop-rate=0",
            "--no-feature-limit",
            "--no-tile-size-limit",  # point features are small; preserve all
        ],
    },
    "settlement_extents": {
        "description": "Settlement extent polygons",
        "settings": [
            "--hilbert",
            "--simplification=3",            # raster-derived polygons — simplify aggressively
            # "--drop-smallest-as-needed",     # overflow: drop smallest (rural) extents, keep dense (urban) ones
            # "--coalesce-smallest-as-needed", # merge tiny adjacent polygons at low zoom rather than discard
            "--maximum-tile-bytes=2097152",  # 2 MB tile cap
            # "--calculate-feature-density",   # adds tippecanoe_feature_density for style-side density expressions
            # "--single-precision",            # halves coordinate storage → meaningful size reduction for dense datasets
            "--include=extent_type",
            "--include=type",
            "--include=building_count",
            "--include=building_count_density_quantile_rank",
            "--include=iso3",
            "--include=mgrs_code", 
            "--calculate-feature-index"
        ],
    },
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
        "name": "GRID3 DRC Administrative Boundaries v8.0",
        "description": "Province, antenna, health zone, and health area operational boundaries for the Democratic Republic of the Congo.",
        "attribution": "© GRID3, CIESIN Columbia University. CC BY-SA 4.0. https://doi.org/10.7916/asa4-jc67",

        # (filename, layer-name-in-tile, minzoom, maxzoom)
        "polygon_layers": [
            ("GRID3_COD_province_v8_0.fgb",  "GRID3-COD-province-v8-0",  4, 15),
            ("GRID3_COD_antenne_v8_0.fgb",   "GRID3-COD-antenne-v8-0",   6, 15),
            ("GRID3_COD_zonesante_v8_0.fgb", "GRID3-COD-zonesante-v8-0", 7, 15),
            ("GRID3_COD_airesante_v8_0.fgb", "GRID3-COD-airesante-v8-0", 8, 15),
        ],
        "point_layers": [
            ("GRID3_COD_province_v8_0_centroids.fgb",  "GRID3-COD-province-v8-0-centroids",  4, 15),
            ("GRID3_COD_antenne_v8_0_centroids.fgb",   "GRID3-COD-antenne-v8-0-centroids",   6, 15),
            ("GRID3_COD_zonesante_v8_0_centroids.fgb", "GRID3-COD-zonesante-v8-0-centroids", 7, 15),
            ("GRID3_COD_airesante_v8_0_centroids.fgb", "GRID3-COD-airesante-v8-0-centroids", 8, 15),
        ],
    },

    # ── Boundaries NGA: all Nigeria operational admin levels ──
    "GRID3_NGA_boundaries": {
        "output_stem": "GRID3_NGA_boundaries",
        "profile": "boundaries",
        "name": "GRID3 Nigeria Operational Boundaries v2.0",
        "description": "Operational administrative boundaries (adm0-adm3) for Nigeria.",
        "attribution": "© GRID3, CIESIN Columbia University. CC BY 4.0. https://doi.org/10.7916/gpv6-dq34",

        "polygon_layers": [
            ("GRID3_NGA_national_boundary_unpublished_20260429.fgb", "GRID3-NGA-unpublished-adm0", 0, 15),
            # ("GRID3_NGA_operational_states_v2_0.fgb", "GRID3-NGA-operational-states-v2-0", 4, 15),
            # ("GRID3_NGA_operational_LGAs_v2_0.fgb",   "GRID3-NGA-operational-LGAs-v2-0",   5, 15),
            # ("GRID3_NGA_operational_wards_v2_0.fgb",  "GRID3-NGA-operational-wards-v2-0",  7, 15),
        ],
        "point_layers": [
            ("GRID3_NGA_national_boundary_unpublished_20260429_centroids.fgb", "GRID3-NGA-unpublished-adm0-centroids", 0, 15)           
            # ("GRID3_NGA_operational_LGAs_v2_0_centroids.fgb",   "GRID3-NGA-operational-LGAs-v2-0-centroids",   5, 15),
            # ("GRID3_NGA_operational_wards_v2_0_centroids.fgb",  "GRID3-NGA-operational-wards-v2-0-centroids",  7, 15),
            ],
    },

    # ── Settlement extents COD ──
    "GRID3_COD_settlement_extents": {
        "output_stem": "GRID3_COD_settlement_extents",
        "profile": "settlement_extents",
        "name": "GRID3 DRC Settlement Extents v3.1",
        "description": "Settlement extent polygons for the Democratic Republic of the Congo",
        "attribution": "© GRID3, CIESIN Columbia University. CC BY-SA 4.0. https://doi.org/10.7916/d6gy-yh28",

        "polygon_layers": [
            ("GRID3_COD_settlement_extents_v3_1.fgb", "GRID3-COD-settlement-extents-v3-1", 7, 15),
        ],
        "point_layers": [],
    },

    # ── Settlement extents NGA: both versions as separate layers ──
    # v4.0 = settlement blocks (very dense, z13+); v3.0 = classic extents (z7+)
    "GRID3_NGA_settlement_extents": {
        "output_stem": "GRID3_NGA_settlement_extents",
        "profile": "settlement_extents",
        "name": "GRID3 Nigeria Settlement Extents v4.0",
        "description": "Settlement block polygons dissolved by MGRS code (v4.0, z7–13) and settlement block polygons (v4.0, z13–16) for Nigeria",
        "attribution": "© GRID3, CIESIN Columbia University. CC BY-SA 4.0. https://doi.org/10.7916/tbgr-4j86",

        "polygon_layers": [
            ("GRID3_NGA_settlement_extents_dissolve_v4_0.fgb", "GRID3-NGA-settlement-extents-v4-0", 7, 13),
            ("GRID3_NGA_settlement_extents_v4_0.fgb", "GRID3-NGA-settlement-blocks-v4-0", 13, 16),
        ],
        "point_layers": [],
    },

    # ── POIs COD: health facilities + settlement names ──
    "GRID3_COD_POIs": {
        "output_stem": "GRID3_COD_POIs",
        "profile": "POI",
        "name": "GRID3 DRC Points of Interest v8.0",
        "description": "Health facilities and settlement names for the Democratic Republic of the Congo",
        "attribution": "© GRID3, CIESIN Columbia University. CC BY-SA 4.0. https://doi.org/10.7916/f1ft-y872",

        "polygon_layers": [],
        "point_layers": [
            ("GRID3_COD_health_facilities_v8_0.fgb", "GRID3-COD-health-facilities-v8-0", 5, 16),
            ("GRID3_COD_settlement_names_v8_0.fgb",   "GRID3-COD-settlement-names-v8-0",  5, 16),
        ],
    },

    # ── POIs NGA: add filenames as data is acquired ──
    "GRID3_NGA_POIs": {
        "output_stem": "GRID3_NGA_POIs",
        "profile": "POI",
        "name": "GRID3 Nigeria Points of Interest",
        "description": "Health facilities and settlement names for Nigeria",
        "attribution": "© GRID3, CIESIN Columbia University. CC BY 4.0.",

        "polygon_layers": [],
        "point_layers": [
            # ("GRID3_NGA_settlement_names_v8_0.fgb", "GRID3-NGA-settlement-names-v8-0", 5, 16),
        ],
    },
}



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

    # Derive tileset zoom range from the layer tuples so POI (z18) and
    # boundary centroids (z16) each generate the correct number of tiles.
    # The per-layer -L minzoom/maxzoom controls visibility within that range.
    # z_min mirrors the lowest per-layer minzoom so tippecanoe never tries to
    # pack features into tiles below the range where any layer is visible
    # (avoids tile-too-large failures with --drop-rate=0 at z0).
    z_min = min((mz for _, _, mz, _, _ in layer_tuples), default=0)
    z_max = max((mz for _, _, _, mz, _ in layer_tuples), default=16)
    zoom_flags = [f"-Z{z_min}", f"-z{z_max}"]

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
            # Compact JSON in the description field (standard -L JSON spec key)
            spec["description"] = _json.dumps(
                {k: v for k, v in m.items() if v and not k.startswith('_')},
                separators=(',', ':')
            )
        cmd.extend(["-L", _json.dumps(spec)])

    if extent:
        xmin, ymin, xmax, ymax = extent
        cmd.extend(["--clip-bounding-box", f"{xmin},{ymin},{xmax},{ymax}"])

    return cmd
