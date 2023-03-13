#!/bin/bash

# Set the name of the archive file
ARCHIVE_NAME="/tmp/thetiptop-server-$(date +"%Y%m%d%H%M%S").sql.gz"

# Use mysqldump to create the archive inside the tmp directory inside the container mysql
docker exec mysql mysqldump -u root --password=root -h localhost --all-databases | gzip > "$ARCHIVE_NAME"


# Use rclone to upload the archive to Google Drive
rclone copy "$ARCHIVE_NAME" googledrive:server-backups

# Delete the archive
rm "$ARCHIVE_NAME"