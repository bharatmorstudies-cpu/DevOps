#!/bin/bash
FILENAME="/backups/nginx_backup_$(date +%Y-%m-%d).tar.gz"
tar -cvzf $FILENAME /etc/nginx/ /usr/share/nginx/html/
echo "Integrity Check for Mike:" >> /backups/verify.log
tar -tvf $FILENAME >> /backups/verify.log

