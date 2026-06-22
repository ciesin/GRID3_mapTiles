#!/bin/bash
set -euo pipefail

INPUT="base.pmtiles"
OUTPUT="base_clean.pmtiles"

echo "=== extracting layers with per-layer zoom filtering ==="

# bathymetry: z0-z3 
echo "[1/5] bathymetry..."
tile-join --force --no-tile-size-limit -o bathymetry_tmp.pmtiles \
  --layer=bathymetry \
  --minimum-zoom=0 --maximum-zoom=3 \
  --exclude=id \
  "$INPUT"

# land + land_cover: z0-z11 ... same zoom range, combine into one pass
echo "[2/5] land + land_cover..."
tile-join --force --no-tile-size-limit -o land_tmp.pmtiles \
  --layer=land --layer=land_cover \
  --minimum-zoom=0 --maximum-zoom=11 \
  --exclude=id \
  "$INPUT"

# land_use: z6-z13 
echo "[3/5] land_use..."
tile-join --force --no-tile-size-limit -o land_use_tmp.pmtiles \
  --layer=land_use \
  --minimum-zoom=6 --maximum-zoom=13 \
  --exclude=id \
  "$INPUT"

# water: z0-z9 
echo "[4/5] water..."
tile-join --force --no-tile-size-limit -o water_tmp.pmtiles \
  --layer=water \
  --minimum-zoom=0 --maximum-zoom=9 \
  --exclude=id \
  "$INPUT"

# infrastructure: z13 
echo "[5/5] infrastructure..."
tile-join --force --no-tile-size-limit -o infrastructure_tmp.pmtiles \
  --layer=infrastructure \
  --minimum-zoom=13 --maximum-zoom=13 \
  --exclude=id \
  "$INPUT"

echo "=== merging all layers into $OUTPUT ==="
tile-join --force --no-tile-size-limit -o "$OUTPUT" \
  bathymetry_tmp.pmtiles \
  land_tmp.pmtiles \
  land_use_tmp.pmtiles \
  water_tmp.pmtiles \
  infrastructure_tmp.pmtiles

echo "=== cleaning up temp files ==="
rm -f bathymetry_tmp.pmtiles land_tmp.pmtiles land_use_tmp.pmtiles \
      water_tmp.pmtiles infrastructure_tmp.pmtiles

echo "Done: $OUTPUT"
