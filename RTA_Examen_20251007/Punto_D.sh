#!/bin/bash
#
#Punto D: estructura simetrica
#

echo "crea estructura"

sudo mkdir -p /Punto_D/{Libros,Musica,Videos}

echo "archivos con salida whoami"
USUARIO=$(logname)
sudo bash -c "for dir in /Punto_D/*; do echo $USUARIO | tee \$dir/elemento; done"

echo "verificar"

sudo cat /Punto_D/*/elemento


