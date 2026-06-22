#!/usr/bin/env python3
"""
Usage: python filterRoads_track_duckdb.py [input.fgb] [output.fgb]

Filters a GRID3 roads FlatGeobuf to only features where class = 'track'.
Output is written as FlatGeobuf with a spatial index.
"""

import sys
import time
import duckdb

src = sys.argv[1] if len(sys.argv) > 1 else "GRID3_COD_roads_v1_0_4326.fgb"
dst = sys.argv[2] if len(sys.argv) > 2 else "GRID3_COD_roads_track.fgb"


def fmt(t0):
    s = time.time() - t0
    return f"{s/60:.1f}m" if s >= 60 else f"{s:.1f}s"


t_total = time.time()

con = duckdb.connect()
con.install_extension("spatial")
con.load_extension("spatial")

print(f"Reading {src} ...", flush=True)
t = time.time()

con.execute(f"""
    CREATE TABLE tracks AS
    SELECT *
    FROM ST_Read('{src}')
    WHERE class = 'track'
""")

n_in = (con.execute(
    f"SELECT COUNT(*) FROM ST_Read('{src}')"
).fetchone() or (0,))[0]
n_out = (con.execute("SELECT COUNT(*) FROM tracks").fetchone() or (0,))[0]
print(f"  {n_in:,} input features → {n_out:,} tracks ({fmt(t)})", flush=True)

print(f"\nWriting {dst} ...", flush=True)
t = time.time()
con.execute(f"""
    COPY tracks TO '{dst}'
    WITH (FORMAT GDAL, DRIVER 'FlatGeobuf', LAYER_CREATION_OPTIONS 'SPATIAL_INDEX=YES')
""")
print(f"  Written ({fmt(t)})", flush=True)

print(f"\nDone: {n_out:,} track features  total {fmt(t_total)}", flush=True)
