#!/usr/bin/env python3
"""
Usage: python buildingCentroids_overture_duckdb.py [input.geoparquet] [output]

Extracts on-surface centroids from Overture Maps building footprints GeoParquet.
Output format is inferred from the file extension:
  .geoparquet / .parquet  →  GeoParquet  (default)
  .fgb                    →  FlatGeobuf with spatial index

ST_PointOnSurface guarantees the point falls on/inside the polygon (unlike ST_Centroid,
which can land outside concave shapes). Swap to ST_Centroid if performance is critical.
"""

import sys
import time
import duckdb

src = sys.argv[1] if len(sys.argv) > 1 else "/tmp/grid3_tiles/overture/buildings.geoparquet"
dst = sys.argv[2] if len(sys.argv) > 2 else "/tmp/grid3_tiles/overture/building_centroids.geoparquet"


def fmt(t0):
    s = time.time() - t0
    return f"{s/60:.1f}m" if s >= 60 else f"{s:.1f}s"


t_total = time.time()

con = duckdb.connect()
con.install_extension("spatial")
con.load_extension("spatial")

# Inspect schema — skip heavy nested/blob columns, keep scalar attributes useful for rendering
print("Inspecting schema...", flush=True)
schema_rows = con.execute(
    f"DESCRIBE SELECT * FROM read_parquet('{src}') LIMIT 0"
).fetchall()
all_cols = {row[0]: row[1] for row in schema_rows}
print(f"  All columns: {', '.join(all_cols)}", flush=True)

SCALAR_CANDIDATES = [
    "id", "confidence", "class", "subtype",
    "height", "num_floors", "min_height", "min_floor",
    "roof_type", "roof_material", "facade_color", "facade_material",
]

def is_scalar(col_type: str) -> bool:
    t = col_type.upper()
    return not any(t.startswith(p) for p in ("STRUCT", "LIST", "MAP", "BLOB", "JSON"))

keep = [c for c in SCALAR_CANDIDATES if c in all_cols and is_scalar(all_cols[c])]
print(f"  Keeping: {', '.join(keep)}", flush=True)

# Extract on-surface centroids in one pass over the parquet file
print(f"\nExtracting centroids from {src}...", flush=True)
t = time.time()

col_select = ", ".join(keep)
con.execute(f"""
    CREATE TABLE centroids AS
    SELECT
        {col_select},
        ST_PointOnSurface(geometry) AS geometry
    FROM read_parquet('{src}')
    WHERE geometry IS NOT NULL
""")

n_out = (con.execute("SELECT COUNT(*) FROM centroids").fetchone() or (0,))[0]
print(f"  {n_out:,} centroids ({fmt(t)})", flush=True)

print(f"\nWriting {dst}...", flush=True)
t = time.time()
if dst.endswith(".fgb"):
    con.execute(f"""
        COPY centroids TO '{dst}'
        WITH (FORMAT GDAL, DRIVER 'FlatGeobuf', LAYER_CREATION_OPTIONS 'SPATIAL_INDEX=YES')
    """)
else:
    con.execute(f"COPY centroids TO '{dst}' (FORMAT PARQUET)")
print(f"  Written ({fmt(t)})", flush=True)

print(f"\nDone: {n_out:,} building centroids  total {fmt(t_total)}", flush=True)
