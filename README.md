# 1-processing

Data processing pipeline for generating PMTiles basemaps.

## 🚀 NEW: Caddy Server Integration

The viewer now supports dual-mode hosting with automatic endpoint detection:
- **Primary**: Self-hosted Caddy server (optimal performance)
- **Fallback**: GitHub Pages with local PMTiles files

**Quick Test**: Run `./test-integration.sh` to verify your setup!

**Documentation**:
- **Quick Start**: [`CADDY_QUICKSTART.md`](CADDY_QUICKSTART.md)
- **Full Guide**: [`CADDY_INTEGRATION.md`](CADDY_INTEGRATION.md)
- **Implementation Details**: [`IMPLEMENTATION_SUMMARY.md`](IMPLEMENTATION_SUMMARY.md)

---

## Quick Start for New Users

### Option 1: Automated Setup (Recommended)
```bash
./setup.sh
```
This interactive script will:
- Ask for your data disk location
- Create the necessary directory structure
- Configure both processing and server `.env` files

### Option 2: Manual Setup
```bash
cd 1-processing
cp .env.example .env
# Edit .env and set DATA_DISK to your preferred location (e.g., external drive)
# Example: DATA_DISK=/Volumes/MyExternalDrive/mapTiles
```

### Data Structure
The pipeline will automatically create this structure on your data disk:
```
${DATA_DISK}/
└── data/
    ├── 1-input/          # Source data (Overture, custom datasets)
    ├── 2-scratch/        # Temporary processing files
    └── 3-pmtiles/        # Generated PMTiles (served by 3-server)
```

## Structure

```
1-processing/
├── notebooks/          # Jupyter notebooks for exploration and analysis
├── scripts/
│   ├── overture/      # Download Overture Maps data
│   ├── custom/        # Convert custom data sources
│   └── tiles/         # Generate PMTiles from sources
├── utilities/         # Analysis and validation tools
└── output/
    └── pmtiles/       # Generated PMTiles files (served by 3-server)
```

## Workflow

1. **Download source data** using scripts in `scripts/overture/` or `scripts/custom/`
2. **Process and convert** data using `scripts/tiles/runCreateTiles.py`
3. **Validate output** using utilities in `utilities/`
4. **Generated tiles** in `output/pmtiles/` are automatically available to the server via symlink

## Key Scripts

- `scripts/overture/downloadOverture.py` - Download Overture Maps data
- `scripts/custom/convertCustomData.py` - Convert custom GeoJSON/shapefiles
- `scripts/tiles/runCreateTiles.py` - Generate PMTiles using Tippecanoe
- `utilities/validate_tippecanoe_settings.py` - Validate tile generation settings

## Output

All generated PMTiles are written to `output/pmtiles/` which is symlinked to the server's data directory for serving.

===

# 2-viewer

Development map viewer for testing PMTiles-based maps and working with MapLibre GL styles.

## Structure

```
2-viewer/
├── index.html         # Main viewer page
├── package.json       # Node dependencies
├── vite.config.js     # Vite dev server configuration
├── src/
│   ├── js/
│   │   ├── main.js    # Application entry point
│   │   └── basemap.js # MapLibre GL setup
│   └── styles/
│       └── style.css  # Application styles
├── public/
│   └── styles/        # MapLibre style specifications
│       ├── cartography.json
│       └── basemap-spec.json
└── examples/          # Example integrations
    └── simple-map.html
```

## Development

### Install dependencies
```bash
cd 2-viewer
npm install
```

### Start dev server
```bash
npm run dev
```

This starts Vite dev server on http://localhost:3000

### Build for production
```bash
npm run build
```

## Usage

The viewer is for development purposes:
- Test PMTiles rendering
- Experiment with MapLibre GL styles
- Develop style specifications for production webmaps
- Preview tile sets before deployment

Style specs in `public/styles/` can be exported for use in production applications.

## Configuration

Edit `src/js/basemap.js` to:
- Point to different tile sources
- Modify layer configurations
- Adjust map initialization options

===

# 3-server

Docker-based tile server stack for serving PMTiles (via Caddy) and dynamic PostGIS layers (via Martin).

## Architecture

```
3-server/
├── docker-compose.yml      # Service orchestration
├── manage.sh              # Management script
├── caddy/                 # Caddy web server (PMTiles)
│   ├── Dockerfile
│   ├── Caddyfile.template
│   └── entrypoint.sh
├── martin/                # Martin tile server (PostGIS)
│   └── config.yaml
├── postgres/              # PostgreSQL + PostGIS
│   └── init/
│       └── 01_init.sql
└── data/
    └── tiles/            # Symlink to ../1-processing/output/pmtiles/
```

## Services

- **Caddy** (port 3002) - Serves static PMTiles files with range request support
- **Martin** (port 3001) - Generates dynamic MVT tiles from PostGIS
- **PostgreSQL** (port 5432) - PostGIS database for dynamic overlay data
- **pgAdmin** (port 3004) - Database management UI (tools profile)

## Quick Start

### First time setup
```bash
cd 3-server
cp .env.example .env
# Edit .env and set DATA_DISK to match your 1-processing/.env configuration
# This ensures the server can find your generated PMTiles
```

### Start services
```bash
./manage.sh start
```

### With pgAdmin
```bash
./manage.sh start tools
```

## Management Commands

```bash
./manage.sh start [tools]    # Start services
./manage.sh stop             # Stop services
./manage.sh restart          # Restart services
./manage.sh rebuild          # Rebuild and restart
./manage.sh logs [service]   # View logs
./manage.sh status           # Check health
./manage.sh catalog          # View Martin tile catalog
./manage.sh psql             # PostgreSQL shell
./manage.sh backup           # Backup database
./manage.sh restore <file>   # Restore database
./manage.sh clean            # Remove all data
```

## Access Points

- **Web Interface**: http://10.0.0.1:3002
- **Static PMTiles**: http://10.0.0.1:3002/static/{tilename}.pmtiles
- **Dynamic MVT**: http://10.0.0.1:3002/mvt/{table}/{z}/{x}/{y}.mvt
- **Martin Catalog**: http://10.0.0.1:3002/catalog
- **PostgreSQL**: 10.0.0.1:5432
- **pgAdmin**: http://10.0.0.1:3004 (with tools profile)

## Tile Sources

PMTiles are served from `data/tiles/` which is a symlink to `../1-processing/output/pmtiles/`. 
Any tiles generated in the processing pipeline are automatically available to the server.

## Configuration

- **Caddy**: Edit `caddy/Caddyfile.template`
- **Martin**: Edit `martin/config.yaml`
- **PostgreSQL**: Add init scripts to `postgres/init/`
- **Environment**: Edit `.env` file
