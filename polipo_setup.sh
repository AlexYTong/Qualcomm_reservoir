#!/bin/bash
#polipo_setup.sh
#This file sets up the polipo

### POLIPO INSTALL ###
echo "installing polipo"
cd polipo
make all
make install
echo "installed polipo"

echo "copying necessary files"
echo "polipo" >> ~/.bashrc
cp -f inittab /etc/inittab

