#!/bin/bash
TIMESTAMP=$(date +%Y-%m-%d)
LOG="/backups/verify.log"

# 1. Sarah's Apache Backup (Config + Document Root)
SARAH_DEST="/backups/apache_backup_$TIMESTAMP.tar.gz"
SARAH_SOURCE="/etc/httpd/ /var/www/html/"

tar -czf "$SARAH_DEST" $SARAH_SOURCE 2>/dev/null

if [ -f "$SARAH_DEST" ]; then
    echo "[$TIMESTAMP] SUCCESS: Apache backup created" >> "$LOG"
    tar -tvf "$SARAH_DEST" >> "$LOG"
else
    echo "[$TIMESTAMP] FAILED: Apache backup failed" >> "$LOG"
fi

# 2. Mike's Nginx Backup (Config + Document Root)
MIKE_DEST="/backups/nginx_backup_$TIMESTAMP.tar.gz"
MIKE_SOURCE="/etc/nginx/ /usr/share/nginx/html/"

tar -czf "$MIKE_DEST" $MIKE_SOURCE 2>/dev/null

if [ -f "$MIKE_DEST" ]; then
    echo "[$TIMESTAMP] SUCCESS: Nginx backup created" >> "$LOG"
    tar -tvf "$MIKE_DEST" >> "$LOG"
else
    echo "[$TIMESTAMP] FAILED: Nginx backup failed" >> "$LOG"
fi














































