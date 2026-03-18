#!/bin/bash
TIMESTAMP=$(date +%Y-%m-%d)
DEST="/backups/apache_backup_$TIMESTAMP.tar.gz"
SOURCE="/var/www/html"
LOG="/backups/verify.log"

# Run the backup
tar -czf "$DEST" "$SOURCE"

# Log the result
if [ -f "$DEST" ]; then
    echo "[$TIMESTAMP] SUCCESS: Backup created at $DEST" >> "$LOG"
    echo "Integrity Check for $TIMESTAMP:" >> "$LOG"
    tar -tvf "$DEST" >> "$LOG"
else
    echo "[$TIMESTAMP] FAILED: Backup could not be created" >> "$LOG"
fi
