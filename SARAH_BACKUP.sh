#!/bin/bash
FILENAME="/backups/apache_backup_$(date +%Y-%m-%d).tar.gz"
tar -cvzf $FILENAME /etc/httpd/ /var/www/html/
echo "Integrity Check for Sarah:" >> /backups/verify.log
tar -tvf $FILENAME >> /backups/verify.log

