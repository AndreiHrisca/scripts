#!/bin/bash

# Verifica si se proporciona el directorio
if [ $# -eq 0 ]; then
  echo "Please provide the directory."
  exit 1
fi

# Encuentra y comprime archivos mayores de 100MB
find "$1" -type f -size +100M -exec gzip {} \;

echo "Compression complete for files larger than 100MB in $1."