#!/bin/bash
#
#Punto B formatear y montar
#

DISCO="/dev/sdc"

echo= "formateo de particiones"

sudo mkfs.ext4 -F /dev/sdc1
sudo mkfs.ext4 -F /dev/sdc2
sudo mkfs.ext4 -F /dev/sdc5
sudo mkfs.ext4 -F /dev/sdc6
sudo mkfs.ext4 -F /dev/sdc7

echo= "punto de montaje"

sudo mkdir -p /mnt/Planeta/Gravedad
sudo mkdir -p /mnt/Planeta/Orbita
sudo mkdir -p /mnt/Cometa/Cola
sudo mkdir -p /mnt/Cometa/Gravedad
sudo mkdir -p /mnt/Cometa/Orbita

echo= "montaje"

sudo mount /dev/sdc1 /mnt/Planeta/Gravedad
sudo mount /dev/sdc2 /mnt/Planeta/Orbita
sudo mount /dev/sdc5 /mnt/Cometa/Cola
sudo mount /dev/sdc6 /mnt/Cometa/Gravedad
sudo mount /dev/sdc7 /mnt/Cometa/Orbita

echo= "montaje persistente"

sudo cp /etc/fstab /etc/fstab.bak

UUID1=$(sudo blkid -s UUID -o value /dev/sdc1)
UUID2=$(sudo blkid -s UUID -o value /dev/sdc2)
UUID5=$(sudo blkid -s UUID -o value /dev/sdc5)
UUID6=$(sudo blkid -s UUID -o value /dev/sdc6)
UUID7=$(sudo blkid -s UUID -o value /dev/sdc7)

echo= "agregandolas a /etc/fstab"

echo "UUID=$UUID1  /mnt/Planeta/Gravedad  ext4  defaults  0  2" | sudo tee -a /etc/fstab
echo "UUID=$UUID2  /mnt/Planeta/Orbita  ext4  defaults  0  2" | sudo tee -a /etc/fstab
echo "UUID=$UUID5  /mnt/Cometa/Cola  ext4  defaults  0  2" | sudo tee -a /etc/fstab
echo "UUID=$UUID6  /mnt/Cometa/Gravedad  ext4  defaults  0  2" | sudo tee -a /etc/fstab
echo "UUID=$UUID7  /mnt/Cometa/Orbita  ext4  defaults  0  2" | sudo tee -a /etc/fstab

sudo mount -a
df -h | grep sdc














