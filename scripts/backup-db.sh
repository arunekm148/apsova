#!/bin/bash
# Hostinger VPS PostgreSQL Automated Backup Script for Apsova
# Place at: /var/www/apsova/scripts/backup-db.sh
# Add to crontab: 0 2 * * * /var/www/apsova/scripts/backup-db.sh

set -e

BACKUP_DIR="/var/backups/apsova_db"
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
DB_NAME="apsova_db"
DB_USER="apsova_user"

# Ensure backup directory exists
mkdir -p "$BACKUP_DIR"

# Perform compressed PostgreSQL dump
pg_dump -U "$DB_USER" -h localhost "$DB_NAME" | gzip > "$BACKUP_DIR/apsova_$TIMESTAMP.sql.gz"

# Retain backups for 14 days, delete older files
find "$BACKUP_DIR" -type f -name "*.sql.gz" -mtime +14 -delete

echo "[$(date)] Backup completed successfully: apsova_$TIMESTAMP.sql.gz"
