#!/bin/bash

echo "Cleaning up temporary files..."

# Elimina archivos de cache
sudo rm -rf /var/cache/*

# Elimina archivos temporales
sudo rm -rf /tmp/*

# Elimina cachés de usuario
rm -rf ~/.cache/*

echo "Temporary files and caches cleaned up."