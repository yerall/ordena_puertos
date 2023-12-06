# Escáner de Puertos y Ordenamiento con Nmap

Este script en Bash realiza un escaneo simple de puertos en un objetivo dado. Proporciona los puertos abiertos en el objetivo especifico de un forma ordenada para su uso es posteriores procesos.

## Características

- Realizar un escaneo con Nmap `nmap -sS -v --min-rate 6000 -p- "$1"` que puede ser editado a preferencia.
- Busqueda de puertos abiertos en el objetivo y los ordena de forma ordenada mas ordenada.

## Uso

```bash
chmod +x ordenapuertos.sh
sudo ./ordenapuertos.sh <objetivo>
```

## Ejemplo de salida

```bash
sudo ./ordenapuertos.sh 192.168.100.18
--------------------------------------------------
// PUERTOS ORDENADOS //
--------------------------------------------------
21,22,23,25,53,80,111,139,445,512,513,514,1099,1524,2049,2121,3306,3632,5432,5900,6000,6667,6697,8009,8180,8787,36273,47693,56699,59046
--------------------------------------------------
```
