#!/bin/bash
#
#Punto C: crear usuario y grupo
#

echo "crear grupos"

sudo groupadd p1c1_2025_g1
sudo groupadd p1c1_2025_gTodos

echo "obtener HASH de la clave"

HASH=$(sudo grep vagrant /etc/shadow | cut -d: -f2)

echo "el HASH es: $HASH"

echo "crear usuario"

sudo useradd -m -s /bin/bash -p "$HASH" -G p1c1_2025_g1 p1c1_2025_u1
sudo useradd -m -s /bin/bash -p "$HASH" -G p1c1_2025_g1 p1c1_2025_u2
sudo useradd -m -s /bin/bash -p "$HASH" -G p1c1_2025_gTodos p1c1_2025_u3

echo "verificar"

getent passwd | grep p1c1_2025
getent group | grep p1c1_2025
