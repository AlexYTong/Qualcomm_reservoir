#!/bin/bash
#setup.sh
# WARNING: This script MUST be used with the sudo command
# usage: sudo sh setup.sh
  
#Created on February 14, 2015 at ID hack for setup of a webcaching raspberry pi
#setup .sh attempts to install polipo through the package manager apt-get.
#
# 
#
#

working_dir=.

tar -zxvf polipo.tar.gz
tar -zxvf texinfo-5.2.tar.gz

### TEXINFO INSTALL ###
echo "installing texinfo (required for polipo)"
cd texinfo-5.2
./configure --prefix=/usr
make
make install
echo "installed texinfo"

cd $working_dir

### POLIPO INSTALL ###
echo "installing polipo"
cd polipo
make all
make install
echo "installed polipo"


echo "copying necessary files"
echo "polipo" >> ~/.bashrc
cp -f inittab /etc/inittab

echo "INSTALL COMPLETE"

###############################################################################
End of File
###############################################################################
