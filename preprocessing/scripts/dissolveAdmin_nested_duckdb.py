#!/usr/bin/env python3
"""
Usage: python dissolveAdmin_COD_duckdb.py input.fgb out_antenne.fgb out_province.fgb

Dissolves GRID3 COD health zone boundaries into two admin levels:
  - out_antenne.fgb  : dissolved by antenne  (includes antenne field)
  - out_province.fgb : dissolved by province (antenne dropped)

Requires: pip install duckdb
"""

import os
import subprocess
import sys
import time
import duckdb

src, dst_antenne, dst_province = sys.argv[1], sys.argv[2], sys.argv[3]

def fmt(t0):
    s = time.time() - t0
    return f"{s/60:.1f}m" if s >= 60 else f"{s:.1f}s"

def fix_geom_type(path, geom_type="MULTIPOLYGON"):
    """Re-write the layer header with an explicit geometry type via ogr2ogr."""
    tmp = path + ".tmp.fgb"
    subprocess.run(
        ["ogr2ogr", "-nlt", geom_type, "-f", "FlatGeobuf", tmp, path],
        check=True,
    )
    os.replace(tmp, path)

t_total = time.time()

con = duckdb.connect()
con.install_extension("spatial")
con.load_extension("spatial")

# Stage 1: load source
print("Reading source...", flush=True)
t = time.time()
con.execute(f"CREATE TABLE zones AS SELECT * FROM ST_Read('{src}')")
n_in = (con.execute("SELECT COUNT(*) FROM zones").fetchone() or (0,))[0]
print(f"  {n_in:,} health zones loaded ({fmt(t)})", flush=True)

# Stage 2a: dissolve by antenne
print("Dissolving by antenne...", flush=True)
t = time.time()
con.execute("""
    CREATE TABLE dissolved_antenne AS
    SELECT
        antenne,
        MIN(pays)                                           AS pays,
        MIN(iso3)                                           AS iso3,
        MIN(province)                                       AS province,
        MIN(prov_uid)                                       AS prov_uid,
        MIN(date)                                           AS date,
        MIN(edit_par)                                       AS edit_par,
        MIN(grid3id)                                        AS grid3id,
        ST_Multi(ST_Union_Agg(geom))                        AS geom,
        ST_Area(ST_Multi(ST_Union_Agg(geom)))               AS "Shape__Area",
        ST_Perimeter(ST_Multi(ST_Union_Agg(geom)))          AS "Shape__Length"
    FROM zones
    GROUP BY antenne
""")
n_antenne = (con.execute("SELECT COUNT(*) FROM dissolved_antenne").fetchone() or (0,))[0]
print(f"  {n_antenne:,} antennes ({fmt(t)})", flush=True)

# Stage 2b: dissolve by province
print("Dissolving by province...", flush=True)
t = time.time()
con.execute("""
    CREATE TABLE dissolved_province AS
    SELECT
        province,
        MIN(pays)                                           AS pays,
        MIN(iso3)                                           AS iso3,
        MIN(prov_uid)                                       AS prov_uid,
        MIN(date)                                           AS date,
        MIN(edit_par)                                       AS edit_par,
        MIN(grid3id)                                        AS grid3id,
        ST_Multi(ST_Union_Agg(geom))                        AS geom,
        ST_Area(ST_Multi(ST_Union_Agg(geom)))               AS "Shape__Area",
        ST_Perimeter(ST_Multi(ST_Union_Agg(geom)))          AS "Shape__Length"
    FROM zones
    GROUP BY province
""")
n_province = (con.execute("SELECT COUNT(*) FROM dissolved_province").fetchone() or (0,))[0]
print(f"  {n_province:,} provinces ({fmt(t)})", flush=True)

# Stage 3a: write antenne output
print(f"Writing {dst_antenne}...", flush=True)
t = time.time()
con.execute(f"""
    COPY dissolved_antenne TO '{dst_antenne}'
    WITH (FORMAT GDAL, DRIVER 'FlatGeobuf', SRS 'EPSG:4326', LAYER_CREATION_OPTIONS 'SPATIAL_INDEX=YES')
""")
fix_geom_type(dst_antenne)
print(f"  Written ({fmt(t)})", flush=True)

# Stage 3b: write province output
print(f"Writing {dst_province}...", flush=True)
t = time.time()
con.execute(f"""
    COPY dissolved_province TO '{dst_province}'
    WITH (FORMAT GDAL, DRIVER 'FlatGeobuf', SRS 'EPSG:4326', LAYER_CREATION_OPTIONS 'SPATIAL_INDEX=YES')
""")
fix_geom_type(dst_province)
print(f"  Written ({fmt(t)})", flush=True)

print(
    f"\nDone: {n_in:,} health zones → {n_antenne:,} antennes, {n_province:,} provinces  "
    f"total {fmt(t_total)}",
    flush=True,
)
