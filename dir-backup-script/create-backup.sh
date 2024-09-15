#!/bin/bash

# Custom error handling function
handle_error() {
  echo "An error occurred. Exiting..."
  exit 1
}

trap 'handle_error' ERR

# Verifica si se proporcionó el directorio de origen
if [ $# -eq 0 ]; then
  echo "Please provide the directory to backup."
  exit 1
fi

# Variables
SOURCE_DIR="$1"
BACKUP_DIR="$HOME/backups"
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
BACKUP_FILE="backup_$TIMESTAMP.tar.gz"

# Crea el directorio de backup si no existe
mkdir -p "$BACKUP_DIR"

# Realiza el backup
tar -czf "$BACKUP_DIR/$BACKUP_FILE" "$SOURCE_DIR"

echo "Backup successful: $BACKUP_DIR/$BACKUP_FILE"