#!/usr/bin/bash

source "$(dirname "$0")/.env"
echo ${R2_URL}
echo ${AWS_ACCESS_KEY_ID}
echo ${AWS_SECRET_ACCESS_KEY}
pmtiles extract https://pub-927f42809d2e4b89b96d1e7efb091d1f.r2.dev/terrain.pmtiles terrain_z11.pmtiles --maxzoom=11 --bucket=s3://${R2_URL}