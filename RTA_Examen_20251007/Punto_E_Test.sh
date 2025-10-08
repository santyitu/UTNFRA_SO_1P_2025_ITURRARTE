#!/bin/bash
#
#Punto E: test
#

echo "propietarios y grupo"

sudo ls -ld /Punto_D/*

echo "verificacion"

sudo stat -c "%A %U %G %n" /Punto_D/*
