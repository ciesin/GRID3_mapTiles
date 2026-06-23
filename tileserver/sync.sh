#!/usr/bin/env bash
# Pull PMTiles from Cloudflare R2 into martin/data/tiles/.
# Mirrors the tiles/ prefix of the R2 bucket; terrain is included in the sync
# but excluded from Martin's config by default (raster-dem, not usable in ArcGIS Pro).
#
# Override via env:
#   RCLONE_REMOTE=ciesin-r2   (default: ciesin-r2)
#   R2_BUCKET_NAME=ciesin-dev  (default: ciesin-prod)
#
# The rclone remote must already be configured. If it isn't, run:
#   bash ../pmtiles/tiles/scripts/sync-rclone-config.sh
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
DATA_DIR="${SCRIPT_DIR}/data"

REMOTE="${RCLONE_REMOTE:-ciesin-r2}"
BUCKET="${R2_BUCKET_NAME:-ciesin-prod}"

echo "==> Syncing PMTiles"
echo "    from: ${REMOTE}:${BUCKET}/tiles/"
echo "    to:   ${DATA_DIR}/tiles/"
echo ""

mkdir -p "${DATA_DIR}/tiles"

rclone sync "${REMOTE}:${BUCKET}/tiles/" "${DATA_DIR}/tiles/" \
  --include "*.pmtiles" \
  --transfers 8 \
  --checkers 16 \
  --progress \
  --log-level INFO

echo ""
echo "==> Sync complete. Tile files:"
find "${DATA_DIR}/tiles" -name "*.pmtiles" -printf "    %P\n" | sort
