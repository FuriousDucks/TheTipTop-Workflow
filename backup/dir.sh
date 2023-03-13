#!/bin/bash

# Set the name of the directory to archive
DIR_NAME="/var/www/"

# Stop the Docker container before starting the backup

# Set the name of the archive file
ARCHIVE_NAME="thetiptop-server-$(date +"%Y%m%d%H%M%S").tar.gz"

# Create the archive inside the tmp directory
tar -czf "/tmp/$ARCHIVE_NAME" "$DIR_NAME"

# Use rclone to upload the archive to Google Drive
rclone copy "$ARCHIVE_NAME" remote:server-backups

# Start the Docker container again

# Delete the archive
rm "$ARCHIVE_NAME"
