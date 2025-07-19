#!/bin/bash

# Define source files/directories to backup (space-separated)
BACKUP_SRC="/path/to/dir1 /path/to/file2 /path/to/anotherdir"

# Define backup destination directory
BACKUP_DEST="/path/to/backup"

# Create backup directory if it doesn't exist
mkdir -p "$BACKUP_DEST"

# Get current date in YYYY-MM-DD format
DATE=$(date +%Y-%m-%d)

# Define backup filename
BACKUP_FILE="$BACKUP_DEST/backup_$DATE.tar.gz"

# Create compressed tarball of source files/directories
tar -czf "$BACKUP_FILE" $BACKUP_SRC

# Optional: Set permissions to readable by owner and group
chmod 640 "$BACKUP_FILE"

echo "Backup created at: $BACKUP_FILE"
