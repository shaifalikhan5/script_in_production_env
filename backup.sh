#!/bin/bash
SOURCE_DIR="/home/shaif/k8s"
BACKUP_DIR="/home/shaif/backup"
tar -czf "$BACKUP_DIR/bkp_$(date +%Y-%m-%d_%H-%M-%S).tar.gz" -C "$SOURCE_DIR" .
find "$BACKUP_DIR" -name "bkp_*.tar.gz" -mtime +7 -exec rm {} \;
