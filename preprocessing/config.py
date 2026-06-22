"""
Path configuration for the geospatial data processing pipeline.

Data is organized by source (grid3, overture, mapterhorn) and, within grid3,
by ISO3 country code (cod, nga, africa). Use the grid3_* helpers to get
country-specific paths rather than building strings by hand.

Environment variables (set in .env):
  DATA_DISK          — root data directory (default: /tmp/grid3_tiles)
  MIGRATION_TARGET   — persistent mirror of 3-pmtiles (default: /mnt/d/...)
  EXTENT_WEST/SOUTH/EAST/NORTH  — required bounding box
  EXTENT_BUFFER      — optional buffer in degrees (default: 0.0)
"""

from pathlib import Path
import os


def load_environment():
    """Load .env from the same directory as this config file."""
    try:
        from dotenv import load_dotenv
        env_file = Path(__file__).resolve().parent / '.env'
        if env_file.exists():
            load_dotenv(env_file)
            return True
    except ImportError:
        pass
    return False


load_environment()


def get_project_root() -> Path:
    """Return the preprocessing/ directory (location of this file)."""
    return Path(__file__).resolve().parent


PROJECT_ROOT = get_project_root()

# ── Data disk root ────────────────────────────────────────────────────────────
_data_disk_env = os.environ.get("DATA_DISK", "/tmp/grid3_tiles")
if _data_disk_env.startswith(('.', '..')):
    DATA_DISK = (PROJECT_ROOT.parent / _data_disk_env).resolve()
else:
    DATA_DISK = Path(_data_disk_env)

# ── Code directories ──────────────────────────────────────────────────────────
SCRIPTS_DIR   = PROJECT_ROOT / "scripts"
NOTEBOOKS_DIR = PROJECT_ROOT / "notebooks"
UTILITIES_DIR = PROJECT_ROOT / "utilities"

# ── Data layout ───────────────────────────────────────────────────────────────
DATA_DIR  = DATA_DISK / "data"
BAK_DIR   = DATA_DIR  / "0-bak"
INPUT_DIR = DATA_DIR  / "1-input"

# Input: per-source
GRID3_INPUT_DIR      = INPUT_DIR / "grid3"
OVERTURE_INPUT_DIR   = INPUT_DIR / "overture"
MAPTERHORN_INPUT_DIR = INPUT_DIR / "mapterhorn"

# Scratch: per-source
SCRATCH_DIR            = DATA_DIR / "2-scratch"
SCRATCH_GRID3_DIR      = SCRATCH_DIR / "grid3"
SCRATCH_OVERTURE_DIR   = SCRATCH_DIR / "overture"
SCRATCH_MAPTERHORN_DIR = SCRATCH_DIR / "mapterhorn"
DUCKDB_TEMP_DIR        = SCRATCH_DIR / ".duckdb_tmp"

# Output: per-source
OUTPUT_DIR            = DATA_DIR / "3-pmtiles"
OUTPUT_GRID3_DIR      = OUTPUT_DIR / "grid3"
OUTPUT_OVERTURE_DIR   = OUTPUT_DIR / "overture"
OUTPUT_MAPTERHORN_DIR = OUTPUT_DIR / "mapterhorn"
OUTPUT_PROTOMAPS_DIR  = OUTPUT_DIR / "protomaps"

# TILE_DIR: alias kept for callers that haven't migrated yet
TILE_DIR = OUTPUT_DIR

# ── ISO3 registry ─────────────────────────────────────────────────────────────
# Add new country codes here; ensure_directories() creates all subdirs automatically.
# "africa" is reserved for merged/continent-level outputs — not an input to tippecanoe.
GRID3_ISO3_CODES: list[str] = ["cod", "nga", "africa"]


# ── Per-country path helpers ──────────────────────────────────────────────────

def grid3_input(iso3: str) -> Path:
    """1-input/grid3/{iso3}/"""
    return GRID3_INPUT_DIR / iso3.lower()


def grid3_scratch(iso3: str) -> Path:
    """2-scratch/grid3/{iso3}/  — processed FGB files ready for tiling."""
    return SCRATCH_GRID3_DIR / iso3.lower()


def grid3_scratch_filtered(iso3: str) -> Path:
    """2-scratch/grid3/{iso3}/_filtered/  — v8_0 files with superseded regions stripped."""
    return SCRATCH_GRID3_DIR / iso3.lower() / "_filtered"


def grid3_scratch_temp(iso3: str) -> Path:
    """2-scratch/grid3/{iso3}/_temp/  — intermediate PMTiles during tile-join operations."""
    return SCRATCH_GRID3_DIR / iso3.lower() / "_temp"


def grid3_output(iso3: str) -> Path:
    """3-pmtiles/grid3/{iso3}/  — per-theme PMTiles outputs."""
    return OUTPUT_GRID3_DIR / iso3.lower()


# ── Migration target (persistent storage mirror) ──────────────────────────────
# OUTPUT_DIR lives in /tmp and is wiped on reboot. After a processing run,
# rsync the 3-pmtiles tree here to persist it across reboots.
MIGRATION_TARGET_DIR = Path(
    os.environ.get("MIGRATION_TARGET", "/mnt/d/mheaton/grid3_tiles/data/3-pmtiles")
)

# ── Template paths ────────────────────────────────────────────────────────────
TILE_QUERIES_TEMPLATE = SCRIPTS_DIR / "tilequeries.sql"
TIPPECANOE_TEMPLATE   = SCRIPTS_DIR / "tippecanoe.py"


# ── Processing extent (required) ──────────────────────────────────────────────

def _get_env_float(name: str) -> float:
    val = os.environ.get(name)
    if val is None:
        raise RuntimeError(
            f"Required environment variable '{name}' is not set. "
            "Set EXTENT_WEST, EXTENT_SOUTH, EXTENT_EAST, EXTENT_NORTH in your .env."
        )
    try:
        return float(val)
    except ValueError:
        raise RuntimeError(f"Environment variable '{name}' must be a valid number, got: {val!r}")


_west  = _get_env_float("EXTENT_WEST")
_south = _get_env_float("EXTENT_SOUTH")
_east  = _get_env_float("EXTENT_EAST")
_north = _get_env_float("EXTENT_NORTH")

if not (_west < _east and _south < _north):
    raise RuntimeError(
        "Invalid extent: ensure EXTENT_WEST < EXTENT_EAST and EXTENT_SOUTH < EXTENT_NORTH."
    )

_buffer_degrees = float(os.environ.get("EXTENT_BUFFER", "0.0"))

EXTENT_COORDS = (_west, _south, _east, _north)


# ── Directory initialisation ──────────────────────────────────────────────────

def ensure_directories() -> bool:
    """Create all pipeline directories. Safe to call multiple times."""
    static_dirs = [
        BAK_DIR,
        INPUT_DIR, GRID3_INPUT_DIR, OVERTURE_INPUT_DIR, MAPTERHORN_INPUT_DIR,
        SCRATCH_DIR, SCRATCH_OVERTURE_DIR, SCRATCH_MAPTERHORN_DIR, DUCKDB_TEMP_DIR,
        OUTPUT_DIR, OUTPUT_GRID3_DIR, OUTPUT_OVERTURE_DIR, OUTPUT_MAPTERHORN_DIR,
        OUTPUT_PROTOMAPS_DIR,
    ]
    iso3_dirs = []
    for iso3 in GRID3_ISO3_CODES:
        iso3_dirs += [
            grid3_input(iso3),
            grid3_scratch(iso3),
            grid3_scratch_filtered(iso3),
            grid3_scratch_temp(iso3),
            grid3_output(iso3),
        ]
    for d in static_dirs + iso3_dirs:
        d.mkdir(parents=True, exist_ok=True)
    return True


# ── Config dict (for notebook / script consumption) ───────────────────────────
# Processing parameters live in config_processing.py to keep this file focused
# on paths. Import get_config() from there for a full merged config.

_tiling_input_dirs = [
    SCRATCH_GRID3_DIR / iso3
    for iso3 in GRID3_ISO3_CODES
    if iso3 != "africa"
]

DEFAULT_CONFIG = {
    "paths": {
        "project_root":       PROJECT_ROOT,
        "scripts_dir":        SCRIPTS_DIR,
        "notebooks_dir":      NOTEBOOKS_DIR,
        "utilities_dir":      UTILITIES_DIR,
        "data_dir":           DATA_DIR,
        "input_dir":          INPUT_DIR,
        "grid3_input_dir":    GRID3_INPUT_DIR,
        "overture_input_dir": OVERTURE_INPUT_DIR,
        "scratch_dir":        SCRATCH_DIR,
        "scratch_grid3_dir":  SCRATCH_GRID3_DIR,
        "duckdb_temp_dir":    DUCKDB_TEMP_DIR,
        "output_dir":         OUTPUT_DIR,
        "output_grid3_dir":   OUTPUT_GRID3_DIR,
        "tile_dir":           OUTPUT_GRID3_DIR,   # primary tile output root
        "template_path":      TILE_QUERIES_TEMPLATE,
        "tippecanoe_template": TIPPECANOE_TEMPLATE,
    },
    "extent": {
        "coordinates":    EXTENT_COORDS,
        "buffer_degrees": _buffer_degrees,
    },
    "download": {
        "verbose": True,
        "output_formats": ["*.parquet", "*.geojson", "*.geojsonseq"],
    },
    "fgb_conversion": {
        "enabled":         True,
        "input_pattern":   "*.parquet",
        "overwrite":       False,
        "verbose":         True,
        "output_suffix":   ".fgb",
        "cleanup_source":  False,
    },
    "conversion": {
        "input_patterns":  ["*.parquet", "*.shp", "*.gpkg", "*.gdb", "*.sqlite",
                            "*.db", "*.geojson", "*.json"],
        "output_suffix":   ".geojsonseq",
        "reproject_crs":   "EPSG:4326",
        "overwrite":       True,
        "verbose":         True,
    },
    "tiling": {
        "input_dirs":       _tiling_input_dirs,
        "output_dir":       OUTPUT_GRID3_DIR,
        "parallel":         False,
        "overwrite":        True,
        "verbose":          True,
        "create_tilejson":  True,
        "filter_pattern":   "*.fgb",
    },
    "migration": {
        "source_dir": OUTPUT_DIR,
        "target_dir": MIGRATION_TARGET_DIR,
    },
}


def get_config() -> dict:
    """Return a deep copy of DEFAULT_CONFIG (modifications won't affect the default)."""
    import copy
    return copy.deepcopy(DEFAULT_CONFIG)


def print_config_summary(config: dict | None = None) -> None:
    """Print a human-readable summary of the current configuration."""
    if config is None:
        config = DEFAULT_CONFIG

    print("PROJECT CONFIGURATION")
    print("=" * 60)
    print(f"Project root:         {config['paths']['project_root']}")
    print(f"Data disk:            {DATA_DISK}")
    print(f"Input (grid3):        {config['paths']['grid3_input_dir']}")
    print(f"Input (overture):     {config['paths']['overture_input_dir']}")
    print(f"Scratch (grid3):      {config['paths']['scratch_grid3_dir']}")
    print(f"Output (grid3):       {config['paths']['output_grid3_dir']}")
    print(f"Migration target:     {MIGRATION_TARGET_DIR}")
    print()
    print(f"ISO3 codes:           {GRID3_ISO3_CODES}")
    print(f"Processing extent:    {config['extent']['coordinates']}")
    print(f"Buffer degrees:       {config['extent']['buffer_degrees']}")

    extent = config['extent']['coordinates']
    area_deg2 = (extent[2] - extent[0]) * (extent[3] - extent[1])
    area_km2  = area_deg2 * 111 * 111
    print(f"Area:                 {area_deg2:.4f} deg² (~{area_km2:.0f} km²)")
    print("=" * 60)


if __name__ == "__main__":
    ensure_directories()
    print_config_summary()
    print("\n✓ All directories created")
    print("\nUsage:")
    print("  from config import get_config, grid3_scratch, grid3_output, OUTPUT_GRID3_DIR")
    print("  config = get_config()")
