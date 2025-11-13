"""
Tippecanoe configuration template for layer-specific settings.

Simple 1:1 mapping between layers and their optimized tippecanoe parameters.
Import this into runCreateTiles.py to get settings for each layer.

Usage:
    from tippecanoe import get_layer_settings
    settings = get_layer_settings('buildings.fgb')  # Automatically matches 'buildings.geojsonseq'
    
Note: get_layer_settings() matches on base filename, ignoring extensions.
      So 'buildings.fgb' will match 'buildings.geojsonseq' in LAYER_SETTINGS.
"""

# Direct mapping of layer files to their tippecanoe settings
# Extension-agnostic: 'buildings.geojsonseq' will match 'buildings.fgb', 'buildings.geojson', etc.
LAYER_SETTINGS = {
    # Building footprints - high detail at close zooms
    'buildings.fgb': [
        '--no-polygon-splitting',
        '--detect-shared-borders',
        '--simplification=6',  # Increased from 4 for better tile sizes
        '--drop-rate=0.15',  # Increased from 0.05 to reduce features
        '--low-detail=12',
        '--full-detail=14',  # Reduced from 15 to cap detail at zoom 13
        '--coalesce-smallest-as-needed',
        '--drop-densest-as-needed',
        '--extend-zooms-if-still-dropping-maximum=15',
        '--maximum-zoom=15',
        '--minimum-zoom=12',
        '--maximum-tile-bytes=2097152', 
        '--buffer=12'
    ],

    # Infrastructure polygons
    'infrastructure.fgb': [
        '--no-polygon-splitting',
        '--detect-shared-borders',
        '--simplification=8',  # Added for geometry simplification
        '--drop-rate=0.2',  # Increased from 0.1
        '--coalesce-densest-as-needed',
        '--drop-densest-as-needed',
        '--minimum-zoom=9',  # Increased from 8 to reduce lower zoom tiles
        '--maximum-zoom=13',  # Reduced from 15, supersample beyond
        '--maximum-tile-bytes=2097152' 
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
        '--minimum-zoom=11',
        '--maximum-zoom=14', 
        '--maximum-tile-bytes=2097152' 
    ],

    'land_cover.fgb': [
        '--no-polygon-splitting',
        '--detect-shared-borders',
        '--simplification=4',  # Reduced from 10 for better detail preservation
        '--drop-rate=0.15',  # Reduced from 0.40 to keep more features
        '--low-detail=11',  # Increased from 8 to preserve detail at lower zooms
        '--full-detail=13',  # Increased from 12 for better detail at mid-zooms
        '--minimum-detail=11',  # Increased from 10
        '--coalesce-densest-as-needed',
        '--drop-densest-as-needed',
        '--minimum-zoom=9',
        '--maximum-zoom=13', 
        '--maximum-tile-bytes=2097152' 
    ],

    'land_residential.fgb': [
        '--no-polygon-splitting',
        '--detect-shared-borders',
        '--simplification=10',  # Added for geometry simplification
        '--drop-rate=0.2',  # Increased from 0.1
        '--coalesce-densest-as-needed',
        '--drop-densest-as-needed',
        '--extend-zooms-if-still-dropping-maximum=15',
        '--minimum-zoom=9',  # Increased from 8
        '--maximum-zoom=15',  
        '--maximum-tile-bytes=2097152' 
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
        '--minimum-zoom=9',
        '--maximum-zoom=13',  
        '--maximum-tile-bytes=2097152' 
    ],

    # Roads - linear features with line-specific optimizations
    'roads.fgb': [
        '--no-line-simplification',
        '--buffer=16',
        # '--drop-rate=0.15',
        # '--drop-smallest',
        '--simplification=5', 
        '--minimum-detail=5',  # Added to ensure minimum detail level
        '--minimum-zoom=9',
        '--maximum-zoom=13',
        '--no-clipping',
        # '--extend-zooms-if-still-dropping-maximum=13',
        '--coalesce-smallest-as-needed',
        '--maximum-tile-bytes=2097152',  # Increased limit to 2MB for road density
        '--drop-densest-as-needed',  # Drop densest features when tiles get too large
    ],

    # Water polygons - enhanced detail at zoom 13+
    'water.fgb': [
        '--no-polygon-splitting',
        '--detect-shared-borders',
        '--simplification=5',  # Added for geometry simplification
        '--drop-rate=0.15',  # Added to manage feature count
        '--extend-zooms-if-still-dropping-maximum=14',
        '--no-clipping',
        '--drop-densest-as-needed',
        '--coalesce-smallest-as-needed',
        '--maximum-tile-bytes=2097152',
        '--minimum-zoom=9',  # Added minimum zoom
        '--maximum-zoom=14'
    ],

    # Point features - places and placenames
    'places.geojson': [
        '--cluster-distance=10',
        '--drop-rate=0.0',
        '--no-feature-limit',
        '--extend-zooms-if-still-dropping',
        '--maximum-zoom=16'
    ],

    'placenames.geojson': [
        '--cluster-distance=10',
        '--drop-rate=0.0',
        '--no-feature-limit',
        '--extend-zooms-if-still-dropping',
        '--maximum-zoom=16'
    ],

    # GRID3 health areas
    'GRID3_COD_health_areas_v5_0.geojsonseq': [
        '--no-polygon-splitting',
        '--detect-shared-borders',
        '--simplification=8',
        '--drop-rate=0.08',
        '--low-detail=9',
        '--full-detail=14',
        '--coalesce-smallest-as-needed',
        '--extend-zooms-if-still-dropping',
        '--maximum-zoom=14',
        '--minimum-zoom=7'
    ],

    # GRID3 health facilities (points)
    'GRID3_COD_health_facilities_v5_0.geojsonseq': [
        '--cluster-distance=15',
        '--drop-rate=0.0',
        '--no-feature-limit',
        '--extend-zooms-if-still-dropping',
        '--maximum-zoom=16',
        '--minimum-zoom=9'
    ],

    # GRID3 health zones
    'GRID3_COD_health_zones_v5_0.geojsonseq': [
        '--no-polygon-splitting',
        '--detect-shared-borders',
        '--simplification=10',
        '--drop-rate=0.08',
        '--low-detail=8',
        '--full-detail=13',
        '--coalesce-smallest-as-needed',
        '--extend-zooms-if-still-dropping',
        '--maximum-zoom=13',
        '--minimum-zoom=6'
    ],

    # GRID3 settlement extents
    'GRID3_COD_Settlement_Extents_v3_1.geojsonseq': [
        '--no-polygon-splitting',
        '--detect-shared-borders',
        '--simplification=10',
        '--drop-rate=0.25',
        '--low-detail=11',
        '--full-detail=14',
        '--coalesce-smallest-as-needed',
        '--gamma=0.8',
        '--maximum-zoom=13',
        '--minimum-zoom=6',
        '--cluster-distance=2',
        '--minimum-detail=8'
    ],

    # GRID3 settlement names (points)
    'GRID3_COD_settlement_names_v5_0.geojsonseq': [
        '--cluster-distance=8',
        '--drop-rate=0.0',
        '--no-feature-limit',
        '--extend-zooms-if-still-dropping',
        '--maximum-zoom=16',
        '--minimum-zoom=7'
    ]
}

# Base tippecanoe command flags that apply to all layers
BASE_COMMAND = [
    '--buffer=8',
    '--drop-smallest',
    '--maximum-tile-bytes=2097152',  # default for all layers
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
