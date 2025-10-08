#!/bin/bash
#
#Punto G: filtros avanzados
#

echo  "crear carpeta"

mkdir -p ~/Punto_G

echo "crear Filtro_avanzado"

echo "Mi ip publica es: $(curl -s ifconfig.me)" > ~/Punto_G/Filtro_Avanzado.txt

CPU_INFO=$(grep "model name" /proc/cpuinfo | head -1 | awk -F: '{print $2}')
FREQ=$(grep "cpu MHz" /proc/cpuinfo | head -1 | awk -F: '{printf "%.2fGHz", $2/1000}')

echo "CPU Modelo:${CPU_INFO} Frecuencia: ${FREQ}" >> ~/Punto_G/Filtro_Avanzado.txt

echo "verificar"
cat ~/Punto_G/Filtro_Avanzado.txt
