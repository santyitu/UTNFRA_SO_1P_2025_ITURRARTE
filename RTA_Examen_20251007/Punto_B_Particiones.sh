#!/bin/bash
#
#Punto B
#Particiones
#

DISCO="/dev/sdc"

echo ">>> iniciando particion en $DISCO"

sudo fdisk $DISCO <<EOF
o
n
p
1

+1G
n
p
2

+1G
n
e
3


n

+2G
n

+2G
n


w
EOF

sudo partprobe $DISCO
echo ">>> Particiones creadas"


