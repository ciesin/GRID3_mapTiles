#!/usr/bin/env python3
"""
Usage: python dissolveBlocks_NGA_duckdb.py input.fgb output.fgb

Fast dissolve of GRID3 NGA settlement extent blocks by mgrs_code using DuckDB.
Equivalent to dissolveBlocks_NGA.sh but parallel across all CPU cores.

Requires: pip install duckdb
DuckDB installs the spatial extension automatically on first run.
"""

import sys
import time
import duckdb

src, dst = sys.argv[1], sys.argv[2]

def fmt(t0):
    s = time.time() - t0
    return f"{s/60:.1f}m" if s >= 60 else f"{s:.1f}s"

t_total = time.time()

con = duckdb.connect()
con.install_extension("spatial")
con.load_extension("spatial")

# Stage 1: load into an in-memory table so we can report row count and reuse
print("Reading source...", flush=True)
t = time.time()
con.execute(f"CREATE TABLE blocks AS SELECT * FROM ST_Read('{src}')")
n_in = (con.execute("SELECT COUNT(*) FROM blocks").fetchone() or (0,))[0]
print(f"  {n_in:,} blocks loaded ({fmt(t)})", flush=True)

# Stage 2: dissolve into a result table
print("Dissolving by mgrs_code...", flush=True)
t = time.time()
con.execute("""
    CREATE TABLE dissolved AS
    SELECT
        mgrs_code,
        CAST(MIN(OBJECTID) AS BIGINT)                            AS OBJECTID,
        MIN(block_id)                                            AS block_id,
        MIN(country)                                             AS country,
        MIN(iso3)                                                AS iso3,
        SUM(block_area_sqm)                                      AS block_area_sqm,
        CAST(SUM(block_neighbor_count) AS BIGINT)                AS block_neighbor_count,
        CAST(SUM(building_count) AS BIGINT)                      AS building_count,
        MIN(building_area_min)                                   AS building_area_min,
        MAX(building_area_max)                                   AS building_area_max,
        SUM(building_area_sum)                                   AS building_area_sum,
        AVG(building_area_median)                                AS building_area_median,
        AVG(building_area_stdev)                                 AS building_area_stdev,
        SUM(building_area_sum) / NULLIF(SUM(block_area_sqm), 0) AS building_area_density,
        MIN(extent_type)                                         AS extent_type,
        AVG(ndvi_mean)                                           AS ndvi_mean,
        AVG(evi_mean)                                            AS evi_mean,
        MAX(gbuilding_max_height)                                AS gbuilding_max_height,
        AVG(gbuilding_mean_height)                               AS gbuilding_mean_height,
        CAST(COUNT(*) AS BIGINT)                                 AS dissolved_block_count,
        AVG(building_count_density_quantile_rank)                AS building_count_density_quantile_rank,
        AVG(building_max_area_quantile_rank)                     AS building_max_area_quantile_rank,
        SUM(building_count) / NULLIF(SUM(block_area_sqm), 0)    AS building_count_density,
        MIN(bd_class)                                            AS bd_class,
        MIN(ma_class)                                            AS ma_class,
        MIN(es_class)                                            AS es_class,
        MIN(composite_class)                                     AS composite_class,
        SUM(Shape__Area)                                         AS Shape__Area,
        ST_Union_Agg(geom)                                       AS geom
    FROM blocks
    GROUP BY mgrs_code
""")
n_out = (con.execute("SELECT COUNT(*) FROM dissolved").fetchone() or (0,))[0]
print(f"  {n_out:,} MGRS polygons ({fmt(t)})", flush=True)

# Stage 3: write to FlatGeobuf
print(f"Writing {dst}...", flush=True)
t = time.time()
con.execute(f"""
    COPY dissolved TO '{dst}'
    WITH (FORMAT GDAL, DRIVER 'FlatGeobuf', LAYER_CREATION_OPTIONS 'SPATIAL_INDEX=YES')
""")
print(f"  Written ({fmt(t)})", flush=True)

print(f"\nDone: {n_in:,} blocks -> {n_out:,} MGRS polygons  total {fmt(t_total)}", flush=True)
