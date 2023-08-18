#!/bin/bash

# MySQL database credentials
DB_USER="root"
DB_PASS="Tjap5454"
DB_NAME="db_hris"

# Backup directory and filename
BACKUP_DIR="BACKUP_DB/"
BACKUP_FILENAME="backup_$(date +%Y-%m-%d_%H-%M-%S).sql"

# Create backup directory if it doesn't exist
mkdir -p $BACKUP_DIR

# Dump the database to a SQL file
mysqldump -u $DB_USER -p$DB_PASS $DB_NAME > $BACKUP_DIR/$BACKUP_FILENAME

# Compress the SQL file using gzip
gzip $BACKUP_DIR/$BACKUP_FILENAME

# Delete backups older than 7 days
find $BACKUP_DIR/* -mtime +7 -exec rm {} \;
