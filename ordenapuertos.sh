#!/bin/bash

# Verificación de argumentos
if [ -z "$1" ]; then
    echo "Uso: $0 <dirección_ip>"
    exit 1
fi

# Escanear puertos activos y guardar resultados en una variable
nmap_output=$(nmap -p- --open -n -sS -Pn --min-rate 6000 "$1" -oG -)

echo "--------------------------------------------------"
echo "// PUERTOS ORDENADOS //"
echo "--------------------------------------------------"

# Enumerar y organizar puertos abiertos
open_ports=$(echo "$nmap_output" | grep -oE "[0-9]{1,5}/open" | cut -d "/" -f 1 | tr '\n' ',' | sed 's/,$//')
echo "$open_ports"

echo "--------------------------------------------------"
