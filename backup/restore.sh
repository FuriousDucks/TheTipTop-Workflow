# set the remote server name
REMOTE_SERVER="googledrive"

# set the remote server path
REMOTE_PATH="server-backups"

# get the latest file name of the backup to restore from the remote server
BACKUP_FILE=$(rclone lsf "$REMOTE_SERVER:$REMOTE_PATH" | tail -n 1)

# set the local server path
LOCAL_PATH="/var/backups/"

rclone sync "$REMOTE_SERVER:$REMOTE_PATH/$BACKUP_FILE" "$LOCAL_PATH"




