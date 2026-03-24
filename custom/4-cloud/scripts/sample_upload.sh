rclone copyto tilejson.json grid3-tiles-rclone:grid3-tiles/tilejson.json --progress --s3-no-check-bucket --s3-chunk-size=256M --header-upload "Content-Type: application/vnd.pmtiles"
rclone copyto buildings.pmtiles grid3-tiles-rclone:grid3-tiles/buildings.pmtiles --progress --s3-no-check-bucket --s3-chunk-size=256M --header-upload "Content-Type: application/vnd.pmtiles"
rclone copyto base.pmtiles grid3-tiles-rclone:grid3-tiles/base.pmtiles --progress --s3-no-check-bucket --s3-chunk-size=256M --header-upload "Content-Type: application/vnd.pmtiles"
rclone copyto nga_settlement_extents.pmtiles grid3-tiles-rclone:grid3-tiles/nga_settlement_extents.pmtiles --progress --s3-no-check-bucket --s3-chunk-size=256M --header-upload "Content-Type: application/vnd.pmtiles"
rclone copyto GRID3_NGA_settlement_extents_v3_1.pmtiles grid3-tiles-rclone:grid3-tiles/GRID3_NGA_settlement_extents_v3_1.pmtiles --progress --s3-no-check-bucket --s3-chunk-size=256M --header-upload "Content-Type: application/vnd.pmtiles"



"Content-Type: application/vnd.pmtiles"
Content-Type: application/json