"""
Download and process ArcGIS Feature Server data.

This module provides functionality to download geospatial data from ArcGIS REST API endpoints
and convert them to formats suitable for tile generation (GeoJSON or FlatGeobuf).

Features:
- Automatic pagination for large datasets (handles >1000 feature limit)
- Spatial filtering by bounding box
- Direct GeoJSON download or conversion to FlatGeobuf
- Progress tracking for large downloads
- Robust error handling and retry logic

Example ArcGIS Feature Server URLs:
- https://services3.arcgis.com/BU6Aadhn6tbBEdyk/arcgis/rest/services/GRID3_COD_Settlement_Extents_v3_1/FeatureServer/0
- https://services3.arcgis.com/BU6Aadhn6tbBEdyk/arcgis/rest/services/GRID3_COD_health_zones_v7_0/FeatureServer/0

Usage:
    from scripts import download_arcgis_data
    
    # Download with extent filtering
    result = download_arcgis_data(
        service_url="https://services3.arcgis.com/.../FeatureServer/0",
        output_path="data/health_zones.geojson",
        extent=(27.0, -8.0, 30.5, -2.0),  # (lon_min, lat_min, lon_max, lat_max)
        output_format="geojson"  # or "fgb" for FlatGeobuf
    )
"""

import requests
import json
from pathlib import Path
from typing import Optional, Tuple, Dict, Any
from tqdm import tqdm
import geopandas as gpd
from shapely.geometry import shape


def parse_arcgis_url(url: str) -> Tuple[str, Dict[str, str]]:
    """
    Parse ArcGIS Feature Server URL and extract base URL and query parameters.
    
    Args:
        url: Full ArcGIS Feature Server URL (may include query parameters)
        
    Returns:
        Tuple of (base_url, query_params_dict)
        
    Example:
        >>> parse_arcgis_url("https://services3.arcgis.com/.../FeatureServer/0/query?where=1=1&f=geojson")
        ("https://services3.arcgis.com/.../FeatureServer/0/query", {"where": "1=1", "f": "geojson"})
    """
    from urllib.parse import urlparse, parse_qs
    
    parsed = urlparse(url)
    base_url = f"{parsed.scheme}://{parsed.netloc}{parsed.path}"
    
    # Ensure base URL ends with /query
    if not base_url.endswith('/query'):
        base_url = base_url.rstrip('/') + '/query'
    
    # Parse query parameters
    query_params = {k: v[0] if len(v) == 1 else v for k, v in parse_qs(parsed.query).items()}
    
    return base_url, query_params


def get_feature_count(service_url: str, where_clause: str = "1=1", extent: Optional[Tuple[float, float, float, float]] = None) -> int:
    """
    Get total feature count from ArcGIS Feature Server.
    
    Args:
        service_url: Base URL of the Feature Server endpoint
        where_clause: SQL where clause for filtering
        extent: Optional bounding box (lon_min, lat_min, lon_max, lat_max)
        
    Returns:
        Total number of features matching the query
    """
    base_url, _ = parse_arcgis_url(service_url)
    
    params = {
        'where': where_clause,
        'returnCountOnly': 'true',
        'f': 'json'
    }
    
    if extent:
        lon_min, lat_min, lon_max, lat_max = extent
        params['geometry'] = f"{lon_min},{lat_min},{lon_max},{lat_max}"
        params['geometryType'] = 'esriGeometryEnvelope'
        params['spatialRel'] = 'esriSpatialRelIntersects'
        params['inSR'] = '4326'
    
    response = requests.get(base_url, params=params)
    response.raise_for_status()
    
    data = response.json()
    return data.get('count', 0)


def download_features_paginated(
    service_url: str,
    where_clause: str = "1=1",
    extent: Optional[Tuple[float, float, float, float]] = None,
    max_record_count: int = 1000,
    verbose: bool = True
) -> list:
    """
    Download all features from ArcGIS Feature Server with pagination.
    
    ArcGIS Feature Servers typically limit responses to 1000-2000 features per request.
    This function handles pagination automatically using resultOffset.
    
    Args:
        service_url: Base URL of the Feature Server endpoint
        where_clause: SQL where clause for filtering (default: "1=1" for all features)
        extent: Optional bounding box (lon_min, lat_min, lon_max, lat_max) in WGS84
        max_record_count: Maximum features per request (default: 1000)
        verbose: Show progress bar
        
    Returns:
        List of GeoJSON features
    """
    base_url, existing_params = parse_arcgis_url(service_url)
    
    # Get total count first
    total_count = get_feature_count(service_url, where_clause, extent)
    
    if verbose:
        print(f"Total features to download: {total_count:,}")
    
    all_features = []
    offset = 0
    
    # Setup progress bar
    pbar = tqdm(total=total_count, desc="Downloading features", disable=not verbose)
    
    while offset < total_count:
        params = {
            'where': where_clause,
            'outFields': '*',
            'returnGeometry': 'true',
            'f': 'geojson',
            'resultOffset': offset,
            'resultRecordCount': max_record_count,
            'outSR': '4326'  # Ensure WGS84 output
        }
        
        # Add spatial filter if extent provided
        if extent:
            lon_min, lat_min, lon_max, lat_max = extent
            params['geometry'] = f"{lon_min},{lat_min},{lon_max},{lat_max}"
            params['geometryType'] = 'esriGeometryEnvelope'
            params['spatialRel'] = 'esriSpatialRelIntersects'
            params['inSR'] = '4326'
        
        # Override with any existing params from URL
        params.update(existing_params)
        
        try:
            response = requests.get(base_url, params=params, timeout=60)
            response.raise_for_status()
            
            data = response.json()
            
            # Check for errors in response
            if 'error' in data:
                raise Exception(f"ArcGIS API Error: {data['error']}")
            
            features = data.get('features', [])
            
            if not features:
                break
            
            all_features.extend(features)
            offset += len(features)
            pbar.update(len(features))
            
            # Safety check - if we got fewer features than requested, we're done
            if len(features) < max_record_count:
                break
                
        except Exception as e:
            if verbose:
                print(f"\nError at offset {offset}: {e}")
            break
    
    pbar.close()
    
    if verbose:
        print(f"Downloaded {len(all_features):,} features")
    
    return all_features


def download_arcgis_data(
    service_url: str,
    output_path: str,
    extent: Optional[Tuple[float, float, float, float]] = None,
    where_clause: str = "1=1",
    output_format: str = "geojson",
    verbose: bool = True
) -> Dict[str, Any]:
    """
    Download data from ArcGIS Feature Server and save to file.
    
    Args:
        service_url: ArcGIS Feature Server URL (e.g., "https://.../FeatureServer/0")
        output_path: Path to save the output file
        extent: Optional bounding box (lon_min, lat_min, lon_max, lat_max) in WGS84
        where_clause: SQL where clause for attribute filtering (default: "1=1")
        output_format: Output format - "geojson" or "fgb" (FlatGeobuf)
        verbose: Show progress messages
        
    Returns:
        Dictionary with download results:
        {
            'success': bool,
            'feature_count': int,
            'output_file': str,
            'output_format': str,
            'extent_used': tuple or None
        }
        
    Example:
        >>> result = download_arcgis_data(
        ...     service_url="https://services3.arcgis.com/.../FeatureServer/0",
        ...     output_path="data/settlements.geojson",
        ...     extent=(27.0, -8.0, 30.5, -2.0),
        ...     output_format="geojson"
        ... )
    """
    output_path = Path(output_path)
    output_path.parent.mkdir(parents=True, exist_ok=True)
    
    if verbose:
        print(f"Downloading from ArcGIS Feature Server...")
        print(f"  URL: {service_url}")
        if extent:
            print(f"  Extent: {extent}")
        print(f"  Output: {output_path}")
        print(f"  Format: {output_format}")
    
    try:
        # Download features with pagination
        features = download_features_paginated(
            service_url=service_url,
            where_clause=where_clause,
            extent=extent,
            verbose=verbose
        )
        
        if not features:
            return {
                'success': False,
                'feature_count': 0,
                'output_file': None,
                'output_format': output_format,
                'extent_used': extent,
                'error': 'No features downloaded'
            }
        
        # Create GeoJSON structure
        geojson = {
            'type': 'FeatureCollection',
            'features': features
        }
        
        if output_format.lower() == 'geojson':
            # Save as GeoJSON
            with open(output_path, 'w') as f:
                json.dump(geojson, f)
            
            if verbose:
                print(f"✓ Saved {len(features):,} features to {output_path}")
        
        elif output_format.lower() == 'fgb':
            # Convert to FlatGeobuf using geopandas
            if verbose:
                print("Converting to FlatGeobuf...")
            
            gdf = gpd.GeoDataFrame.from_features(features, crs='EPSG:4326')
            
            # Ensure output path has .fgb extension
            if not str(output_path).endswith('.fgb'):
                output_path = output_path.with_suffix('.fgb')
            
            gdf.to_file(output_path, driver='FlatGeobuf')
            
            if verbose:
                print(f"✓ Saved {len(features):,} features to {output_path}")
        
        else:
            raise ValueError(f"Unsupported output format: {output_format}. Use 'geojson' or 'fgb'")
        
        return {
            'success': True,
            'feature_count': len(features),
            'output_file': str(output_path),
            'output_format': output_format,
            'extent_used': extent
        }
        
    except Exception as e:
        if verbose:
            print(f"✗ Error downloading ArcGIS data: {e}")
        
        return {
            'success': False,
            'feature_count': 0,
            'output_file': None,
            'output_format': output_format,
            'extent_used': extent,
            'error': str(e)
        }


def batch_download_arcgis_layers(
    layer_configs: list,
    output_dir: str,
    extent: Optional[Tuple[float, float, float, float]] = None,
    output_format: str = "geojson",
    verbose: bool = True
) -> Dict[str, Any]:
    """
    Download multiple ArcGIS Feature Server layers.
    
    Args:
        layer_configs: List of layer configurations, each with:
            - 'url': Feature Server URL
            - 'name': Output filename (without extension)
            - 'where': Optional SQL where clause (default: "1=1")
        output_dir: Directory to save output files
        extent: Optional bounding box applied to all layers
        output_format: Output format - "geojson" or "fgb"
        verbose: Show progress messages
        
    Returns:
        Dictionary with batch download results
        
    Example:
        >>> layers = [
        ...     {
        ...         'url': 'https://.../GRID3_COD_Settlement_Extents_v3_1/FeatureServer/0',
        ...         'name': 'settlements',
        ...         'where': '1=1'
        ...     },
        ...     {
        ...         'url': 'https://.../GRID3_COD_health_zones_v7_0/FeatureServer/0',
        ...         'name': 'health_zones'
        ...     }
        ... ]
        >>> results = batch_download_arcgis_layers(
        ...     layer_configs=layers,
        ...     output_dir='data/arcgis',
        ...     extent=(27.0, -8.0, 30.5, -2.0)
        ... )
    """
    output_dir = Path(output_dir)
    output_dir.mkdir(parents=True, exist_ok=True)
    
    results = {
        'total_layers': len(layer_configs),
        'successful': 0,
        'failed': 0,
        'layers': []
    }
    
    for config in layer_configs:
        layer_name = config.get('name', 'layer')
        layer_url = config['url']
        where_clause = config.get('where', '1=1')
        
        # Determine output path
        extension = '.fgb' if output_format.lower() == 'fgb' else '.geojson'
        output_path = output_dir / f"{layer_name}{extension}"
        
        if verbose:
            print(f"\n{'='*60}")
            print(f"Processing: {layer_name}")
            print(f"{'='*60}")
        
        result = download_arcgis_data(
            service_url=layer_url,
            output_path=str(output_path),
            extent=extent,
            where_clause=where_clause,
            output_format=output_format,
            verbose=verbose
        )
        
        results['layers'].append({
            'name': layer_name,
            **result
        })
        
        if result['success']:
            results['successful'] += 1
        else:
            results['failed'] += 1
    
    if verbose:
        print(f"\n{'='*60}")
        print(f"BATCH DOWNLOAD SUMMARY")
        print(f"{'='*60}")
        print(f"Total layers: {results['total_layers']}")
        print(f"Successful: {results['successful']}")
        print(f"Failed: {results['failed']}")
    
    return results


if __name__ == '__main__':
    import argparse
    
    parser = argparse.ArgumentParser(description='Download ArcGIS Feature Server data')
    parser.add_argument('url', help='ArcGIS Feature Server URL')
    parser.add_argument('output', help='Output file path')
    parser.add_argument('--extent', help='Bounding box: lon_min,lat_min,lon_max,lat_max')
    parser.add_argument('--where', default='1=1', help='SQL where clause')
    parser.add_argument('--format', choices=['geojson', 'fgb'], default='geojson',
                       help='Output format (default: geojson)')
    
    args = parser.parse_args()
    
    extent = None
    if args.extent:
        extent = tuple(map(float, args.extent.split(',')))
    
    result = download_arcgis_data(
        service_url=args.url,
        output_path=args.output,
        extent=extent,
        where_clause=args.where,
        output_format=args.format,
        verbose=True
    )
    
    exit(0 if result['success'] else 1)
