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

# Direct mapping of layer files to their tippecanoe settings
# Extension-agnostic: 'buildings.geojsonseq' will match 'buildings.fgb', 'buildings.geojson', etc.
LAYER_SETTINGS = {
    # Building footprints - high detail at close zooms
    # 'buildings.fgb': [
    #     '--no-polygon-splitting',
    #     '--detect-shared-borders',
    #     '--simplification=8',  # Increased from 4 for better tile sizes
    #     '--drop-rate=0.2',  # Increased from 0.05 to reduce features
    #     '--coalesce-smallest-as-needed',
    #     '--drop-densest-as-needed',
    #     '--extend-zooms-if-still-dropping-maximum=15',
    #     '--maximum-zoom=15',
    #     '--minimum-zoom=12',
    #     '--buffer=12'
    # ],

    # Infrastructure polygons
    'infrastructure.fgb': [
        '--no-polygon-splitting',
        '--detect-shared-borders',
        '--simplification=8',  # Added for geometry simplification
        '--drop-rate=0.2',  # Increased from 0.1
        '--coalesce-densest-as-needed',
        '--drop-densest-as-needed',
        # '--minimum-zoom=9',  # Increased from 8 to reduce lower zoom tiles
        # '--maximum-zoom=13',  # Reduced from 15, supersample beyond
        # '--maximum-tile-bytes=2097152' 
    ],

    # Land use polygons 
    'land_use.fgb': [
        '--no-polygon-splitting',
        '--detect-shared-borders',
        '--simplification=4',  # Reduced from 10 for better detail preservation
        '--drop-rate=0.15',  # Reduced from 0.40 to keep more features
        '--low-detail=11',  # Increased from 8 to preserve detail at lower zooms
        '--full-detail=13',  # Increased from 12 for better detail at mid-zooms
        '--minimum-detail=11',  # Increased from 10
        '--extend-zooms-if-still-dropping-maximum=14',
        '--coalesce-densest-as-needed',
        '--drop-densest-as-needed',
        # '--minimum-zoom=11',
        # '--maximum-zoom=14', 
        # '--maximum-tile-bytes=2097152' 
    ],

    'land_cover.fgb': [
        '--no-polygon-splitting',
        '--detect-shared-borders',
        '--simplification=4',  # Reduced from 10 for better detail preservation
        '--drop-rate=0.2',  # Reduced from 0.40 to keep more features
        # '--full-detail=14',  # Increased from 12 for better detail at mid-zooms
        '--minimum-detail=11',  # Increased from 10
        # '--no-duplication',
        '--buffer=16',
        '--hilbert',
        '--coalesce-densest-as-needed',
        '--drop-densest-as-needed',
        # '--minimum-zoom=7',
        '--extend-zooms-if-still-dropping-maximum=13',
        # '--maximum-zoom=13', 
        # '--maximum-tile-bytes=4194304' 
    ],

    'land_residential.fgb': [
        '--no-polygon-splitting',
        '--detect-shared-borders',
        '--simplification=10',  # Added for geometry simplification
        '--drop-rate=0.2',  # Increased from 0.1
        '--coalesce-densest-as-needed',
        '--drop-densest-as-needed',
        '--extend-zooms-if-still-dropping-maximum=13',
        # '--minimum-zoom=7',  # Increased from 8
        # '--maximum-zoom=15',  
        # '--maximum-tile-bytes=2097152' 
    ],

    'land.fgb': [
        '--no-polygon-splitting',
        '--detect-shared-borders',
        '--simplification=4',  # Reduced from 10 for better detail preservation
        '--drop-rate=0.1',  # Reduced from 0.2 to keep more features
        '--low-detail=9',  # Added to preserve detail at lower zooms
        '--full-detail=13',  # Added for better detail at mid-zooms
        '--minimum-detail=11',  # Added to ensure minimum detail level
        '--coalesce-densest-as-needed',
        '--drop-densest-as-needed',
        # '--minimum-zoom=7',
        # '--maximum-zoom=13',  
        # '--maximum-tile-bytes=2097152' 
    ],

    # Roads - linear features with line-specific optimizations
    'roads.fgb': [
        '--no-line-simplification',
        '--buffer=16',
        # '--drop-rate=0.15',
        # '--drop-smallest',
        '--simplification=5', 
        '--minimum-detail=5',  # Added to ensure minimum detail level
        # '--minimum-zoom=7',
        '--no-simplification-of-shared-nodes',
        # '--maximum-zoom=14',
        '--no-clipping',
        '--extend-zooms-if-still-dropping-maximum=14',
        '--coalesce-smallest-as-needed',
        # '--maximum-tile-bytes=4194304',  # Increased limit to 4MB for road density
        '--drop-densest-as-needed',  # Drop densest features when tiles get too large
        '-j', '{"*":["any",[">=","$zoom",11],["!=","class","path"]]}',  # Exclude class=path below zoom 11
    ],

    # Water polygons - enhanced detail at zoom 13+
    'water.fgb': [
        # '--no-polygon-splitting',
        # '--detect-shared-borders',
        # '--simplification=6', 
        # '--drop-rate=0.15', 
        '--extend-zooms-if-still-dropping-maximum=14',
        # '--no-clipping',
        '--buffer=16',
        '--hilbert',
        '--drop-densest-as-needed',
        '--no-simplification-of-shared-nodes',
        # '--maximum-tile-bytes=4194304',
        # '--minimum-zoom=7',
        # '--maximum-zoom=13',
        '-j', '{"*":["all",["any",[">=","$zoom",12],["!=","class","stream"]],["any",[">=","$zoom",10],["==","$type","Polygon"]]]}',  # Any streams below zoom 12, only polygons below zoom 10
    ],

    # Point features - places and placenames
    'places.geojson': [
        '--cluster-distance=10',
        '--drop-rate=0.0',
        '--no-feature-limit',
        '--extend-zooms-if-still-dropping',
        # '--maximum-zoom=16'
    ],

    'placenames.geojson': [
        '--cluster-distance=10',
        '--drop-rate=0.0',
        '--no-feature-limit',
        '--extend-zooms-if-still-dropping',
        # '--maximum-zoom=16'
    ],

    # Administrative boundaries - health areas
    # Nested administrative polygons requiring shared boundary topology
    'health_areas.fgb': [
        '--no-polygon-splitting',  # Keep polygons intact across tile boundaries
        '--no-simplification-of-shared-nodes',  # Preserve shared boundaries identically
        # '--simplification=3',  # Moderate simplification while preserving topology
        # '--drop-rate=0.05',  # Minimal dropping to preserve boundary integrity
        # '--low-detail=9',
        # '--full-detail=14',
        '--coalesce-densest-as-needed',  # Merge features when needed, maintaining coverage
        '--extend-zooms-if-still-dropping-maximum=14',
        # '--maximum-zoom=14',
        # '--minimum-zoom=7',
        '--buffer=8'  # Standard buffer for proper rendering
    ],



    # Administrative boundaries - health zones
    # Higher-level nested administrative polygons
    'health_zones.fgb': [
        '--no-polygon-splitting',  # Keep polygons intact across tile boundaries
        '--no-simplification-of-shared-nodes',  # Preserve shared boundaries identically
        # '--simplification=3',  # Higher simplification acceptable at this admin level
        # '--drop-rate=0.05',  # Minimal dropping to preserve boundary integrity
        # '--low-detail=8',
        # '--full-detail=13',
        '--coalesce-densest-as-needed',  # Merge features when needed, maintaining coverage
        '--extend-zooms-if-still-dropping-maximum=14',
        # '--maximum-zoom=13',
        # '--minimum-zoom=6',
        '--buffer=8'
    ],

    # Settlement extents - very numerous small polygons
    # Heavily optimized for lower zoom levels due to high feature count
    # Filtered by type: Built-up Area (z10+), Small Settlement Area (z11+), Hamlet (z12+)
    'settlement_extents.fgb': [
        '--no-polygon-splitting',
        '--no-simplification-of-shared-nodes',
        '--simplification=8',  # Higher simplification for many small features
        # '--drop-rate=0.4',  # Aggressive dropping at low zooms due to high count
        # '--low-detail=10',  # Start showing detail at min zoom
        # '--full-detail=14',
        '--minimum-detail=8',
        '--coalesce-smallest-as-needed',  # Merge smallest settlements at low zooms
        '--drop-smallest-as-needed',  # Drop smallest when tiles too large
        '--gamma=1.2',  # Reduce density of clustered settlements
        '--extend-zooms-if-still-dropping-maximum=14',
        # '--maximum-zoom=14',
        # '--minimum-zoom=8',  
        # '--maximum-tile-bytes=2097152',
        '--buffer=12',
        # Filter by settlement type and zoom level
        '-j', '{"*":["any",["all",[">=","$zoom",8],["all",["!=","type","Hamlet"],["!=","type","Small settlement area"]]],["all",[">=","$zoom",9],["==","type","Small settlement area"]],["all",[">=","$zoom",12],["==","type","Hamlet"]]]}'
        ],

    # Administrative boundaries - provinces (top-level admin units)
    # Large-scale administrative boundaries with strict topology preservation
    'provinces.fgb': [
        '--no-polygon-splitting',  # Essential for continuous coverage
        '--no-simplification-of-shared-nodes',  # Preserve provincial boundaries exactly
        '--simplification=10',  # Higher simplification for large-scale features
        '--drop-rate=0.0',  # Never drop provincial boundaries
        '--low-detail=6',
        '--full-detail=12',
        '--coalesce-densest-as-needed',  # Maintain full coverage
        '--extend-zooms-if-still-dropping',
        # '--maximum-zoom=12',
        # '--minimum-zoom=3',  # Visible from very low zoom levels
        '--buffer=8'
    ],
    
}

# Base tippecanoe command flags that apply to all layers
BASE_COMMAND = [
    '--buffer=8',
    '-zg',
    '-Bg',
    '--drop-smallest',
    # '--maximum-tile-bytes=2097152',  # default for all layers
    '--preserve-input-order',
    '--coalesce-densest-as-needed',
    '--drop-fraction-as-needed',
    '--drop-densest-as-needed',  # Added for better tile size management
    '-P'  # Show progress
]

def get_layer_settings(filename):
    """
    Get tippecanoe settings for a specific layer file.
    
    Extension-agnostic but requires exact base name match.
    'buildings.fgb' will match 'buildings.geojsonseq' settings.
    'land.fgb' will NOT match 'land_residential.fgb' settings.
    
    Args:
        filename (str): Name of the layer file
        
    Returns:
        list: Tippecanoe command arguments for this layer
    """
    import os
    
    # Get base name without extension
    base_name = os.path.splitext(filename)[0]
    
    # Look for exact base name match in LAYER_SETTINGS
    for template_filename, settings in LAYER_SETTINGS.items():
        template_base = os.path.splitext(template_filename)[0]
        # Require exact match of base name (not partial/substring match)
        if base_name == template_base:
            return settings
    
    # No match found
    return []

def build_tippecanoe_command(input_file, output_file, layer_name, extent=None):
    """
    Build complete tippecanoe command for a layer.
    
    Args:
        input_file (str): Path to input GeoJSON/GeoJSONSeq file
        output_file (str): Path to output PMTiles file  
        layer_name (str): Layer name for the tiles
        extent (tuple): Optional bounding box (xmin, ymin, xmax, ymax)
        
    Returns:
        list: Complete command arguments for subprocess
    """
    import os
    
    filename = os.path.basename(input_file)
    
    # Start with base command
    cmd = ['tippecanoe', '-fo', output_file, '-l', layer_name] + BASE_COMMAND
    
    # Add layer-specific settings
    layer_settings = get_layer_settings(filename)
    cmd.extend(layer_settings)
    
    # Add extent clipping if provided
    if extent:
        xmin, ymin, xmax, ymax = extent
        cmd.extend(['--clip-bounding-box', f'{xmin},{ymin},{xmax},{ymax}'])
    
    # Add input file
    cmd.append(input_file)
    
    return cmd
