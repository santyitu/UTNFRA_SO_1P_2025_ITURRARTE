#!/bin/bash
#
#Punto E: Permisos y owners
#

echo "asignar propietario"

sudo chown p1c1_2025_u1:p1c1_2025_gTodos /Punto_D/Libros
sudo chown p1c1_2025_u2:p1c1_2025_gTodos /Punto_D/Musica
sudo chown p1c1_2025_u3:p1c1_2025_gTodos /Punto_D/Videos

echo "ajustar permisos de las carpetas"

sudo chmod 710 /Punto_D/Libros
sudo chmod 704 /Punto_D/Musica
sudo chmod 755 /Punto_D/Videos

echo "verificar"

sudo ls -ld /Punto_D/*
