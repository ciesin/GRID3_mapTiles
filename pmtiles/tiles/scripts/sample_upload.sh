# rclone copyto tilejson.json grid3-tiles-rclone:grid3-tiles/tilejson.json --progress --s3-no-check-bucket --s3-chunk-size=256M --header-upload "Content-Type: application/vnd.pmtiles"
rclone copyto buildings.pmtiles grid3-tiles-rclone:grid3-tiles/buildings.pmtiles --progress --s3-no-check-bucket --s3-chunk-size=256M --header-upload "Content-Type: application/vnd.pmtiles"
rclone copyto base.pmtiles grid3-tiles-rclone:grid3-tiles/base.pmtiles --progress --s3-no-check-bucket --s3-chunk-size=256M --header-upload "Content-Type: application/vnd.pmtiles"
rclone copyto settlement_extents.pmtiles grid3-tiles-rclone:grid3-tiles/settlement_extents.pmtiles --progress --s3-no-check-bucket --s3-chunk-size=256M --header-upload "Content-Type: application/vnd.pmtiles"
rclone copyto grid3.pmtiles grid3-tiles-rclone:grid3-tiles/grid3.pmtiles --progress --s3-no-check-bucket --s3-chunk-size=256M --header-upload "Content-Type: application/vnd.pmtiles"
rclone copyto terrain.pmtiles grid3-tiles-rclone:grid3-tiles/terrain.pmtiles --progress --s3-no-check-bucket --s3-chunk-size=256M --header-upload "Content-Type: application/vnd.pmtiles"
rclone copyto settlement_extents.pmtiles grid3-tiles-rclone:grid3-tiles/GRID3_NGA_settlement_extents_v3_1.pmtiles --progress --s3-no-check-bucket --s3-chunk-size=256M --header-upload "Content-Type: application/vnd.pmtiles"


rclone moveto r2:my-bucket/file.txt r2:my-bucket/new-folder/file.txt

rclone moveto grid3-tiles-rclone:grid3-tiles/terrain.pmtiles grid3-tiles-rclone:grid3-tiles/alpha/terrain.pmtiles --progress --s3-no-check-bucket --s3-chunk-size=256M --header-upload "Content-Type: application/vnd.pmtiles"

rclone moveto grid3-tiles-rclone:grid3-tiles/grid3.pmtiles grid3-tiles-rclone:grid3-tiles/alpha/grid3.pmtiles --progress --s3-no-check-bucket --s3-chunk-size=256M --header-upload "Content-Type: application/vnd.pmtiles"

"Content-Type: application/vnd.pmtiles"
Content-Type: application/json