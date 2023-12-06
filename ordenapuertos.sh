#!/bin/bash

# Verificación de argumentos
if [ -z "$1" ]; then
    echo "Uso: $0 <dirección_ip>"
    exit 1
fi

# Escanear puertos activos y guardar resultados en un archivo temporal
nmap_output=$(nmap -sS -v --min-rate 6000 -p- "$1" -oG -)
echo "$nmap_output" > archivotemp

echo "--------------------------------------------------"
echo "// PUERTOS ORDENADOS //"
echo "--------------------------------------------------"

# Enumerar y organizar puertos abiertos
open_ports=$(grep -oE "[0-9]{1,5}/open" archivotemp | cut -d "/" -f 1 | tr '\n' ',' | sed 's/,$//')
echo "$open_ports"

echo "--------------------------------------------------"

# Eliminar archivo temporal
rm archivotemp
