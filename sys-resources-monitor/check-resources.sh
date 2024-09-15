#!/bin/bash

# Obtener uso de CPU
CPU_USAGE=$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}')

# Obtener uso de memoria
MEMORY_USAGE=$(free -m | awk 'NR==2{printf "%.2f", $3*100/$2 }')

# Obtener uso de disco
DISK_USAGE=$(df -h | awk '$NF=="/"{printf "%s", $5}')

# Imprimir reporte
echo "Resource Usage Report:"
echo "----------------------"
echo "CPU Usage: $CPU_USAGE%"
echo "Memory Usage: $MEMORY_USAGE%"
echo "Disk Usage: $DISK_USAGE"