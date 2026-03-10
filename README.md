# Map Source Attribution

*Last updated: March 10, 2026*

## Table of Contents

- [1. GRID3 COD Geospatial Base Layers](#grid3)
- [2. Protomaps Global Basemap](#protomaps)
- [3. Overture Buildings](#overture)
- [4. Mapterhorn Terrain](#terrain)
- [Combined Attribution Requirements](#combined)
- [Summary](#freshness)
- [License Information](#licenses)

---

<div class="source-card" id="grid3">

## 1. GRID3 COD Geospatial Base Layers <span class="badge badge-primary">grid3.pmtiles</span>

### Archive Details

<div class="technical-specs">

**Type:** Vector tiles (MVT)  
**Tile Format:** `.mvt` (Mapbox Vector Tiles)  
**Compression:** gzip (internal & tile)  
**Zoom Levels:** 0-15  
**PMTiles Spec Version:** 3  
**Coverage:** DRC region (11.95° to 32.34° E, -13.92° to 5.62° N)  
**Center:** 28.125° E, -5.589° N (zoom 15)

</div>

### Data Sources & Attribution

- **Author:** Center for Integrated Earth System Information (CIESIN), Columbia University
- **Data Year:** 2026
- **Tile generator:** Tippecanoe v2.80.0
- **Type:** Overlay
- **Country:** Democratic Republic of the Congo (COD/DRC)

<div class="attribution-box">

**Attribution Text:**
```
Center for Integrated Earth System Information (CIESIN), Columbia University, Ministère de la Santé Publique, Hygiène et Prévention, Democratic Republic of the Congo, and GRID3. 2025. GRID3 COD - Geospatial Base Layers v8.0. New York: GRID3. https://data.grid3.org/search?q=COD&sort=Date%20Created%7Ccreated%7Cdesc&tags=latest
```

**Individual Dataset Citations:**

Health Areas:
```
Center for Integrated Earth System Information (CIESIN), Columbia University, Ministère de la Santé Publique, Hygiène et Prévention, Democratic Republic of the Congo, and GRID3. 2025. GRID3 COD - Health Areas v8.0. New York: GRID3. https://doi.org/10.7916/kcq9-7s03. Accessed 10 March 2026.
```

Health Facilities:
```
Center for Integrated Earth System Information (CIESIN), Columbia University, Ministère de la Santé Publique, Hygiène et Prévention, Democratic Republic of the Congo, and GRID3. 2025. GRID3 COD - Health Facilities v8.0. New York: GRID3. https://doi.org/10.7916/f1ft-y872. Accessed 10 March 2026.
```

Health Zones:
```
Center for Integrated Earth System Information (CIESIN), Columbia University, Ministère de la Santé Publique, Hygiène et Prévention, Democratic Republic of the Congo, and GRID3. 2025. GRID3 COD - Health Zones v8.0. New York: GRID3. https://doi.org/10.7916/asa4-jc67. Accessed 10 March 2026.
```

Settlement Names:
```
Center for Integrated Earth System Information (CIESIN), Columbia University, Ministère de la Santé Publique, Hygiène et Prévention, Democratic Republic of the Congo, and GRID3. 2025. GRID3 COD - Settlement Names v8.0. New York: GRID3. https://doi.org/10.7916/qpnw-1c89. Accessed 10 March 2026.
```

Settlement Extents:
```
Center for International Earth Science Information Network (CIESIN), Columbia University. 2024. GRID3 COD - Settlement Extents v3.1. New York: GRID3. https://doi.org/10.7916/d6gy-yh28. Accessed 10 March 2026.
```

</div>

### Layers <span class="badge badge-info">7 total</span>

#### 1. health-facilities <span class="badge badge-success">Point, min z0, max z15</span>

- **Features:** 341,114
- **Description:** Health facility locations
- **Key Attributes:**
  - essnom1, essnom2 (facility names)
  - esstype (facility type: 13 categories)
  - categorie (ownership: Etatique/Publique, Confessionnelle, Privé, ONG)
  - lat, lon (coordinates)
  - airesante, zonesante, province
  - dhis2 (DHIS2 ID), grid3id
  - date (collection year: 2017-2025)
  - precision_ (GPS accuracy)
  - frigo, frigofct (refrigeration status)
  - vaccfixe (fixed vaccination site)
- **Data Sources:** Multiple agencies
  - Sources: BLSQ, CIESIN MSPHP, DSNIS, ECV, ESPK, GRID3 PEV, OMS, PATH GRID3, PEV, PNLP, PNLTHA, PROSANI USAID

#### 2. settlement-names <span class="badge badge-success">Point, min z0, max z15</span>

- **Features:** 1,182,743
- **Description:** Settlement name and place labels
- **Attributes:**
    - localite (settlement name - 1000+ unique values)
    - localite_alt (alternate names)
    - localitetype (11 types: Village, Quaŕtier, Avenue, Hameau, Bloc, Campement, etc.)
    - airesante, zonesante, province
    - lat, lon (coordinates)
    - precision_ (GPS accuracy)
    - enclav (accessibility: Oui/Non)
    - enclavdate (seasonal accessibility by quarter)
    - date (collection year: 1994-2025)
    - grid3id, OBJECTID
- **Data Sources:**
    - Sources: CIESIN MSPHP, DSNIS, ESPK, ESPK GRID3 CIESIN, ESPK UCLA, GRID3 PEV, IOM, MONUC GNS, OMS GPEI, OMS ISS, PEV, PNLP IMA, PNLP SANRU, RGC

#### 3. settlement-extents <span class="badge badge-success">Polygon, min z0, max z15</span>

- **Features:** 5,499,158
- **Description:** Settlement extent polygons
- **Settlement Types:**
    - Built-up Area
    - Small Settlement Area
    - Hamlet

#### 4. health-areas <span class="badge badge-success">Polygon, min z0, max z15</span>

- **Features:** 2,856,768
- **Description:** Health area polygons for DRC
- **Key Attributes:** airesante (health area name), province, zonesante (health zone)
- **Coverage:** 26 provinces, 517 health zones

#### 5. health-zones <span class="badge badge-success">Polygon, min z0, max z15</span>

- **Features:** 2,280,420
- **Description:** Health zone boundaries
- **Key Attributes:** province, zonesante
- **Coverage:** 517 health zones across 26 provinces

### Geographic Coverage

**DRC Provinces (26 total):**  
Bas-Uele, Equateur, Haut-Katanga, Haut-Lomami, Haut-Uele, Ituri, Kasaï, Kasaï-Central, Kasaï-Oriental, Kinshasa, Kongo-Central, Kwango, Kwilu, Lomami, Lualaba, Mai-Ndombe, Maniema, Mongala, Nord-Kivu, Nord-Ubangi, Sankuru, Sud-Kivu, Sud-Ubangi, Tanganyika, Tshopo, Tshuapa

**Health Zones:** 517 zones across 26 provinces

### Technical Details

- **Total tiles:** 1,596,724 tile entries
- **Unique tiles:** 952,932 tile contents
- **Addressed tiles:** 2,100,350
- **Clustered:** Yes

</div>

---

<div class="source-card" id="protomaps">

## 2. Protomaps Global Basemap <span class="badge badge-primary">global.pmtiles</span>

### Archive Details

<div class="technical-specs">

**Type:** Vector tiles (MVT)  
**Tile Format:** `.mvt` (Mapbox Vector Tiles)  
**Compression:** gzip (internal & tile)  
**Zoom Levels:** 0-15  
**PMTiles Spec Version:** 3  
**Coverage:** Global (-180° to 180°, -85.05° to 85.05°)

</div>

### Data Sources & Attribution

- **Primary Source:** [OpenStreetMap](https://www.openstreetmap.org) contributors
- **Secondary Source:** [Natural Earth](https://www.naturalearthdata.com)
- **Tile generator:** Planetiler v0.9.0
- **Build Date:** May 6, 2025 (2025-05-06T00:22:16.609Z)
- **OSM Data Date:** February 2, 2026, 04:00:00 UTC
- **OSM Replication Sequence:** 117381
- **Version:** 4.13.6 (Protomaps basemap version)

<div class="attribution-box">

**Attribution Text:**
```
© OpenStreetMap contributors
```

**HTML Format:**
```html
<a href="https://www.openstreetmap.org/copyright" target="_blank">© OpenStreetMap</a>
```

</div>

### Layers <span class="badge badge-info">9 total</span>

1. **boundaries** - Administrative boundaries (min z0, max z15)
2. **buildings** - OSM building footprints (min z11, max z15)
3. **earth** - Land polygons with multilingual names (min z0, max z15)
4. **landcover** - Natural landcover features (min z0, max z7)
5. **landuse** - Land use polygons (min z2, max z15)
6. **places** - POI labels with population data (min z1, max z15)
7. **pois** - Points of interest (min z5, max z15)
8. **roads** - Road network with multilingual names (min z3, max z15)
9. **water** - Water features (min z0, max z15)

### Technical Details

- **Total tiles:** 154,388,776 tile entries
- **Unique tiles:** 133,718,570 tile contents
- **Addressed tiles:** 1,431,655,765
- **Clustered:** Yes
- **Font Support:** Devanagari script (NotoSansDevanagari-Regular)

</div>

---

<div class="source-card" id="overture">

## 3. Overture Buildings <span class="badge badge-primary">buildings.pmtiles</span>

### Archive Details

<div class="technical-specs">

**Type:** Vector tiles (MVT)  
**Tile Format:** `.mvt` (Mapbox Vector Tiles)  
**Compression:** gzip (internal & tile)  
**Zoom Levels:** 0-14 (data available 5-14)  
**PMTiles Spec Version:** 3  
**Coverage:** Global (-180° to 180°, -85.05° to 85.05°)

</div>

### Data Sources & Attribution

- **Primary Source:** [Overture Maps Foundation](https://overturemaps.org)
- **Contributing Source:** [OpenStreetMap](https://www.openstreetmap.org) contributors
- **Tile generator:** Planetiler v0.9.2
- **Build Date:** September 20, 2025 (2025-09-20T10:08:13.852Z)
- **Type:** Overlay

<div class="attribution-box">

**Attribution Text:**
```
© OpenStreetMap contributors
© Overture Maps Foundation
```

**HTML Format:**
```html
<a href="https://www.openstreetmap.org/copyright" target="_blank">© OpenStreetMap</a>
<a href="https://docs.overturemaps.org/attribution" target="_blank">© Overture Maps Foundation</a>
```

</div>

### Layers <span class="badge badge-info">2 total</span>

1. **building** - Building footprints with height data (min z5, max z14)
   - Attributes: height, class, facade details, roof details, sources, version
2. **building_part** - Building sub-parts (min z9, max z14)
   - Attributes: height, building_id, facade details, roof details

### Technical Details

- **Total tiles:** 3,271,936 tile entries
- **Unique tiles:** 3,271,936 tile contents
- **Addressed tiles:** 3,271,936
- **Clustered:** Yes

</div>

---

<div class="source-card" id="terrain">

## 4. Mapterhorn 30m Terrain <span class="badge badge-primary">terrain.pmtiles</span>

### Archive Details

<div class="technical-specs">

**Type:** Raster tiles (WebP)  
**Tile Format:** `.webp` (raster DEM)  
**Compression:** Internal gzip, tiles uncompressed  
**Zoom Levels:** 0-12  
**PMTiles Spec Version:** 3  
**Coverage:** Africa region (-18.8° to 51.8° E, -35.4° to 37.5° N)  
**Center:** 16.5° E, 1.05° N (zoom 6)  
**Tile Size:** 256x256 pixels  
**Encoding:** Terrarium (elevation encoding format)

</div>

### Data Sources & Attribution

- **Provider:** [Mapterhorn](https://mapterhorn.com)
- **Type:** Digital Elevation Model (DEM)
- **Use:** Hillshade, contours, 3D terrain visualization

<div class="attribution-box">

**Attribution Text:**
```
© Mapterhorn
```

**HTML Format:**
```html
<a href="https://mapterhorn.com/attribution">© Mapterhorn</a>
```

</div>

### Usage in Application

#### DEM Source (for hillshade):

- Encoding: Terrarium
- Max zoom: 12
- Used by: maplibre-contour library

#### Contours Source (vector contours generated dynamically):

- Generated from DEM tiles using maplibre-contour
- **Contour intervals (zoom-dependent):**
  - z10.5: 60m/300m (minor/major)
  - z11.5: 50m/250m
  - z12.5: 20m/100m
  - z13.5: 10m/50m
  - z14.5: 10m/50m
  - z15.5: 5m/25m
- Elevation units: meters
- Min zoom: 10

### Technical Details

- **Total tiles:** 545,896 tile entries
- **Unique tiles:** 541,263 tile contents
- **Addressed tiles:** 756,971
- **Clustered:** Yes

</div>

---


<div id="combined">

## Combined Attribution Requirements

When using all tile sources together, the complete attribution should be:

<div class="attribution-box">

### Full Attribution Text

```
Map data © OpenStreetMap contributors
Buildings © Overture Maps Foundation  
GRID3 COD Geospatial Base Layers ©2026. The Trustees of Columbia University in the City of New York
Terrain © Mapterhorn & COPERNICUS GLO-30 ©2025
```

### Recommended HTML Format

```html
<a href="https://www.openstreetmap.org/copyright">© OpenStreetMap</a> |
<a href="https://docs.overturemaps.org/attribution">© Overture Maps Foundation</a> | 
<a href="https://data.grid3.org/search?q=COD&sort=Date%20Created%7Ccreated%7Cdesc&tags=latest">GRID3 COD Geospatial Base Layers ©2026. The Trustees of Columbia University in the City of New York</a> |
<a href="https://mapterhorn.com/attribution">© Mapterhorn</a> |
<a href="https://docs.sentinel-hub.com/api/latest/static/files/data/dem/resources/license/License-COPDEM-30.pdf">© COPERNICUS GLO-30 2025</a>
```

</div>

</div>

---

<div id="freshness">

## Summary

| Source | Build/Collection Date | Data Currency |
|--------|----------------------|---------------|
| Protomaps Global | May 6, 2025 | OSM data: Feb 2, 2026 |
| Overture Buildings | September 20, 2025 | 2025 Overture release |
| GRID3 COD Geospatial Base Layers | 2017-2026 | Multi-year compilation |
| Mapterhorn Terrain | N/A | Static DEM product |

</div>

---

<div id="licenses">

## License Information

<div class="license-box">

### OpenStreetMap (Protomaps basemap)

- **License:** [ODbL (Open Database License)](https://www.openstreetmap.org/copyright)
- **Attribution Required:** Yes
- **Share-Alike:** Database must remain open

</div>

<div class="license-box">

### Overture Maps

- **License:** [CDLA-Permissive-2.0](https://docs.overturemaps.org/attribution)
- **Attribution Required:** Yes
- **Sources:** Includes OpenStreetMap + other contributors

</div>

<div class="license-box">

### GRID3 COD Geospatial Base Layers

- **License:** [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/)
- **Attribution Required:** Yes (©2026. The Trustees of Columbia University in the City of New York)
- **Usage:** Users are free to use, copy, distribute, transmit, and adapt the work for commercial and non-commercial purposes, without restriction, as long as clear attribution of the source is provided.

</div>

<div class="license-box">

### Mapterhorn 30m Terrain

- **License:** [COPERNICUS GLO-30 ©2025](https://docs.sentinel-hub.com/api/latest/static/files/data/dem/resources/license/License-COPDEM-30.pdf)
- **Attribution Required:** Yes

</div>

</div>

---

## Technical Specifications

| Archive | Type | Size (tiles) | Zoom Range | Format | Compression |
|---------|------|--------------|------------|--------|-------------|
| global.pmtiles | Vector | 154M entries | 0-15 | MVT | gzip |
| buildings.pmtiles | Vector | 3.3M entries | 5-14 | MVT | gzip |
| grid3.pmtiles | Vector | 1.6M entries | 0-15 | MVT | gzip |
| terrain.pmtiles | Raster | 546K entries | 0-12 | WebP | none |

---

## Serverless Tile Architecture

### Cloudflare Workers + R2 Storage

All PMTiles archives are served through a Cloudflare Worker to [decode URLs into georeferenced tiles](https://docs.protomaps.com/deploy/) with ZXY coordinates using http range requests:

**Development worker URL:** `https://pmtiles-cloudflare.mheaton-945.workers.dev`

*note: CDN caching is not yet available with this development URL*

#### Tile URL Patterns:

- **GRID3:** `{worker-url}/grid3/{z}/{x}/{y}.mvt`
- **Protomaps:** `{worker-url}/global/{z}/{x}/{y}.mvt`
- **Overture:** `{worker-url}/buildings/{z}/{x}/{y}.mvt`
- **Terrain:** `{worker-url}/terrain/{z}/{x}/{y}.webp`

---

## Links

- [Source code](https://github.com/ciesin/GRID3_mapTiles)
- [CIESIN](https://ciesin.columbia.edu/)
- [GRID3 Data Hub](https://data.grid3.org/)
- [PMTiles Specification](https://github.com/protomaps/PMTiles)
- [Introduction to PMTiles](https://guide.cloudnativegeo.org/pmtiles/intro.html)
- [Protomaps Basemap Builds](https://maps.protomaps.com/)
- [Overture Maps](https://overturemaps.org)
- [OpenStreetMap](https://www.openstreetmap.org)
- [Mapterhorn](https://mapterhorn.com)
- [Tippecanoe](https://github.com/felt/tippecanoe)
- [Planetiler](https://github.com/onthegomap/planetiler)

---

## Contact

For questions about this codebase, please contact: [mheaton@ciesin.columbia.edu](mailto:mheaton@ciesin.columbia.edu)
<br>
Attribution inquries: [mlukang@ciesin.columbia.edu](mailto:mlukang@ciesin.columbia.edu)
<br>
All other info: [info@ciesin.columbia.edu](mailto:info@ciesin.columbia.edu)