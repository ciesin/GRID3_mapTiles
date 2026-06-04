#!/usr/bin/env bash

set -euo pipefail

# Usage: dissolveAdmin.sh input.fgb output.fgb
# Dissolve by province, keep the first value for each remaining attribute.

SRC_LAYER=$(basename "$1" .fgb)
DST_LAYER=$(basename "$2" .fgb)

ogr2ogr \
	-f FlatGeobuf \
	-nln "$DST_LAYER" \
	-nlt MULTIPOLYGON \
	-dialect SQLITE \
	-sql "SELECT antenne, \
							 MIN(OBJECTID) AS OBJECTID, \
							 MIN(pays) AS pays, \
							 MIN(iso3) AS iso3, \
                             MIN(province) AS province, \
							 MIN(prov_uid) AS prov_uid, \
							 MIN(antenne) AS antenne, \
							 MIN(date) AS date, \
							 MIN(edit_par) AS edit_par, \
							 MIN(source_acronym) AS source_acronym, \
							 MIN(grid3id) AS grid3id, \
							 MIN(sourceid) AS sourceid, \
							 ST_Multi(ST_Union(geometry)) AS geometry \
				FROM \"$SRC_LAYER\" \
				GROUP BY antenne" \
	"$2" "$1"
