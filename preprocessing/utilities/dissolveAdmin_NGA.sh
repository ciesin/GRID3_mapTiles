#!/usr/bin/env bash

set -euo pipefail

# Usage: dissolveAdmin.sh input.fgb output.fgb
# Dissolve by X, keep the first value for each remaining attribute.

SRC_LAYER=$(basename "$1" .fgb)
DST_LAYER=$(basename "$2" .fgb)

ogr2ogr \
	-f FlatGeobuf \
	-nln "$DST_LAYER" \
	-nlt MULTIPOLYGON \
	-dialect SQLITE \
	-sql "SELECT state, \
		 MIN(country) AS country, \
		 MIN(iso3) AS iso3, \
		 MIN(state) AS state, \
		 MIN(statecode) AS statecode, \
		 SUM(multipart_count) AS multipart_count, \
		 MIN(source) AS source, \
		 MIN(date) AS date, \
		 SUM(area_sqkm) AS area_sqkm, \
		 ST_Multi(ST_Union(geometry)) AS geometry \
	FROM \"$SRC_LAYER\" \
	GROUP BY state" \
	"$2" "$1"
