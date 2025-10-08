#!/bin/bash
#
#Punto F: filtro basico
#

echo "crear carpeta"

mkadir -p ~/Punto_F

echo "archivo filtro_basico"

grep "MemTotal" /proc/meminfo > ~/Punto_F/Filtro_basico.txt
grep "model name" /proc/cpuinfo | head -1 >> ~/Punto_F/Filtro_basico.txt
grep "cpu MHz" /proc/cpuinfo | head -1 >> ~/Punto_F/Filtro_basico.txt

echo "verificar"

cat ~/Punto_F/Filtro_basico.txt

