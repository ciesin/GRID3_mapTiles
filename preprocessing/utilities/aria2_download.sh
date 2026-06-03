#!/bin/sh

set -e

aria2c \
    --max-concurrent-downloads=16 \
    --max-connection-per-server=16 \
    --split=16 \
    --min-split-size=10M \
    --allow-overwrite=true \
    -o terrain.pmtiles \
    https://download.mapterhorn.com/planet.pmtiles


    pmtiles extract \
  --bbox=-18.8,-35.4,51.8,37.5 \
  https://download.mapterhorn.com/planet.pmtiles \
  terrain.pmtiles


aria2c \
  --max-concurrent-downloads=16 \
  --max-connection-per-server=16 \
  --split=16 \
  --min-split-size=10M \
  --allow-overwrite=true \
  -o /tmp/tiles/base.pmtiles \
  https://build.protomaps.com/20260601.pmtiles

&& rclone copyto /tmp/tiles/base.pmtiles ciesin-r2:ciesin-prod/tiles/base.pmtiles --progress --s3-chunk-size=256M --s3-no-check-bucket --multi-thread-streams=16 --multi-thread-cutoff=64M --buffer-size=64M --header-upload "Content-Type: application/vnd.pmtiles"