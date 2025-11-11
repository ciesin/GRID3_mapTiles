// Example MapLibre GL JS integration for hybrid tile serving
// This demonstrates how to combine static PMTiles basemap with dynamic Martin overlays

import maplibregl from 'maplibre-gl';
import { Protocol } from 'pmtiles';

// Register PMTiles protocol
const protocol = new Protocol();
maplibregl.addProtocol('pmtiles', protocol.tile);

// Initialize map
const map = new maplibregl.Map({
    container: 'map',
    style: {
        version: 8,
        name: 'Hybrid Basemap + Overlays',
        
        // Define sources
        sources: {
            // Static basemap from PMTiles (served by Caddy)
            // Update monthly as new Overture data is released
            'basemap-roads': {
                type: 'vector',
                url: 'pmtiles://http://localhost:8080/static/roads.pmtiles',
                attribution: 'Overture Maps'
            },
            
            'basemap-buildings': {
                type: 'vector',
                url: 'pmtiles://http://localhost:8080/static/buildings.pmtiles'
            },
            
            'basemap-water': {
                type: 'vector',
                url: 'pmtiles://http://localhost:8080/static/water.pmtiles'
            },
            
            'basemap-land': {
                type: 'vector',
                url: 'pmtiles://http://localhost:8080/static/land.pmtiles'
            },
            
            // Dynamic overlays from Martin (PostGIS)
            // Updates immediately when database changes
            'health-facilities': {
                type: 'vector',
                tiles: ['http://localhost:8080/mvt/health_facilities/{z}/{x}/{y}.mvt'],
                minzoom: 0,
                maxzoom: 14
            },
            
            'admin-boundaries': {
                type: 'vector',
                tiles: ['http://localhost:8080/mvt/admin_boundaries/{z}/{x}/{y}.mvt'],
                minzoom: 0,
                maxzoom: 12
            },
            
            // Using custom tile function for zoom-aware filtering
            'clustered-facilities': {
                type: 'vector',
                tiles: ['http://localhost:8080/mvt/get_health_facilities_tiles/{z}/{x}/{y}.mvt'],
                minzoom: 0,
                maxzoom: 14
            }
        },
        
        // Define layers
        layers: [
            // Basemap layers (from PMTiles)
            {
                id: 'land-background',
                type: 'fill',
                source: 'basemap-land',
                'source-layer': 'land',
                paint: {
                    'fill-color': '#f8f4f0'
                }
            },
            {
                id: 'water',
                type: 'fill',
                source: 'basemap-water',
                'source-layer': 'water',
                paint: {
                    'fill-color': '#a0c8f0'
                }
            },
            {
                id: 'buildings',
                type: 'fill',
                source: 'basemap-buildings',
                'source-layer': 'buildings',
                minzoom: 13,
                paint: {
                    'fill-color': '#d9d0c9',
                    'fill-opacity': 0.7
                }
            },
            {
                id: 'roads',
                type: 'line',
                source: 'basemap-roads',
                'source-layer': 'roads',
                paint: {
                    'line-color': '#ffffff',
                    'line-width': [
                        'interpolate',
                        ['exponential', 1.5],
                        ['zoom'],
                        5, 0.5,
                        18, 12
                    ]
                }
            },
            
            // Overlay layers (from Martin/PostGIS)
            {
                id: 'admin-boundaries-fill',
                type: 'fill',
                source: 'admin-boundaries',
                'source-layer': 'admin_boundaries',
                paint: {
                    'fill-color': 'transparent',
                    'fill-outline-color': '#666666'
                }
            },
            {
                id: 'admin-boundaries-line',
                type: 'line',
                source: 'admin-boundaries',
                'source-layer': 'admin_boundaries',
                paint: {
                    'line-color': '#666666',
                    'line-width': [
                        'case',
                        ['==', ['get', 'admin_level'], 2], 2,
                        ['==', ['get', 'admin_level'], 4], 1.5,
                        1
                    ],
                    'line-dasharray': [2, 2]
                }
            },
            
            // Health facilities - circles at high zoom
            {
                id: 'health-facilities-points',
                type: 'circle',
                source: 'health-facilities',
                'source-layer': 'health_facilities',
                minzoom: 10,
                paint: {
                    'circle-radius': [
                        'interpolate',
                        ['linear'],
                        ['zoom'],
                        10, 3,
                        14, 8
                    ],
                    'circle-color': [
                        'match',
                        ['get', 'type'],
                        'hospital', '#d73027',
                        'clinic', '#fc8d59',
                        'pharmacy', '#4575b4',
                        '#999999'
                    ],
                    'circle-stroke-color': '#ffffff',
                    'circle-stroke-width': 1
                }
            },
            
            // Health facilities - labels
            {
                id: 'health-facilities-labels',
                type: 'symbol',
                source: 'health-facilities',
                'source-layer': 'health_facilities',
                minzoom: 12,
                layout: {
                    'text-field': ['get', 'name'],
                    'text-size': 11,
                    'text-anchor': 'top',
                    'text-offset': [0, 1],
                    'text-optional': true
                },
                paint: {
                    'text-color': '#333333',
                    'text-halo-color': '#ffffff',
                    'text-halo-width': 1
                }
            },
            
            // Clustered view at low zooms (using custom function)
            {
                id: 'facilities-clustered',
                type: 'circle',
                source: 'clustered-facilities',
                'source-layer': 'health_facilities',
                maxzoom: 10,
                paint: {
                    'circle-radius': [
                        'interpolate',
                        ['linear'],
                        ['get', 'count'],
                        1, 8,
                        50, 20,
                        100, 30
                    ],
                    'circle-color': '#fc8d59',
                    'circle-opacity': 0.8,
                    'circle-stroke-color': '#ffffff',
                    'circle-stroke-width': 2
                }
            }
        ]
    },
    center: [23.5, -2.5], // Adjust to your area of interest
    zoom: 6
});

// Add controls
map.addControl(new maplibregl.NavigationControl());
map.addControl(new maplibregl.ScaleControl());

// Add interactivity
map.on('click', 'health-facilities-points', (e) => {
    const feature = e.features[0];
    const coordinates = e.lngLat;
    
    const popup = new maplibregl.Popup()
        .setLngLat(coordinates)
        .setHTML(`
            <h3>${feature.properties.name || 'Unnamed'}</h3>
            <p><strong>Type:</strong> ${feature.properties.type}</p>
            <p><strong>Category:</strong> ${feature.properties.category || 'N/A'}</p>
        `)
        .addTo(map);
});

// Change cursor on hover
map.on('mouseenter', 'health-facilities-points', () => {
    map.getCanvas().style.cursor = 'pointer';
});

map.on('mouseleave', 'health-facilities-points', () => {
    map.getCanvas().style.cursor = '';
});

// Log when map is loaded
map.on('load', () => {
    console.log('Map loaded successfully');
    console.log('Basemap sources (PMTiles):', ['roads', 'buildings', 'water', 'land']);
    console.log('Overlay sources (Martin/PostGIS):', ['health-facilities', 'admin-boundaries']);
});

// Optional: Add layer toggle control
const toggleControl = document.createElement('div');
toggleControl.className = 'maplibregl-ctrl maplibregl-ctrl-group';
toggleControl.innerHTML = `
    <button id="toggle-facilities" title="Toggle Health Facilities">
        <span>🏥</span>
    </button>
    <button id="toggle-boundaries" title="Toggle Admin Boundaries">
        <span>🗺️</span>
    </button>
`;

document.getElementById('toggle-facilities')?.addEventListener('click', () => {
    const visibility = map.getLayoutProperty('health-facilities-points', 'visibility');
    map.setLayoutProperty(
        'health-facilities-points',
        'visibility',
        visibility === 'visible' ? 'none' : 'visible'
    );
    map.setLayoutProperty(
        'health-facilities-labels',
        'visibility',
        visibility === 'visible' ? 'none' : 'visible'
    );
});

document.getElementById('toggle-boundaries')?.addEventListener('click', () => {
    const visibility = map.getLayoutProperty('admin-boundaries-line', 'visibility');
    map.setLayoutProperty(
        'admin-boundaries-line',
        'visibility',
        visibility === 'visible' ? 'none' : 'visible'
    );
});

export default map;
