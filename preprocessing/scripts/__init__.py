"""
Processing scripts package for geospatial data pipeline.

This package contains modular scripts for downloading, converting,
and processing geospatial data into PMTiles format.
"""

from .downloadOverture import download_overture_data, download_overture_buildings_cli
from .convertCustomData import convert_file
from .runCreateTiles import process_to_tiles, create_tilejson
from .convertToFlatGeobuf import (
    convert_parquet_to_fgb,
    batch_convert_directory,
    convert_geodata_to_fgb,
    batch_convert_geodata,
    convert_gpkg_to_fgb_layers,
)
from .downloadArcGIS import download_arcgis_data, batch_download_arcgis_layers, test_service_connection
from .filter_fgb import filter_fgb, _resolve_filter
from .merge_fgb import merge_fgb, run_merge_config
from .generateLabels import (
    generate_centroids, 
    batch_generate_centroids,
    generate_centerlines,
    batch_generate_centerlines
)

# Optional performance optimization imports
try:
    from . import polars_helpers
    from . import xgboost_optimizer
    POLARS_HELPERS_AVAILABLE = True
    XGBOOST_OPTIMIZER_AVAILABLE = True
except ImportError:
    POLARS_HELPERS_AVAILABLE = False
    XGBOOST_OPTIMIZER_AVAILABLE = False

__all__ = [
    'download_overture_data',
    'download_overture_buildings_cli',
    'convert_file',
    'process_to_tiles',
    'create_tilejson',
    'convert_parquet_to_fgb',
    'batch_convert_directory',
    'convert_geodata_to_fgb',
    'batch_convert_geodata',
    'convert_gpkg_to_fgb_layers',
    'download_arcgis_data',
    'batch_download_arcgis_layers',
    'test_service_connection',
    'filter_fgb',
    '_resolve_filter',
    'merge_fgb',
    'run_merge_config',
    'generate_centroids',
    'batch_generate_centroids',
    'generate_centerlines',
    'batch_generate_centerlines',
]

# Add optional modules to __all__ if available
if POLARS_HELPERS_AVAILABLE:
    __all__.append('polars_helpers')
if XGBOOST_OPTIMIZER_AVAILABLE:
    __all__.append('xgboost_optimizer')
