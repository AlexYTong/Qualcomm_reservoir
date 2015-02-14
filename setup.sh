#!/bin/bash
#setup.sh
# WARNING: This script MUST be used with the sudo command
# usage: sudo sh setup.sh
  
#Created on February 14, 2015 at ID hack for setup of a webcaching raspberry pi
#setup .sh attempts to install polipo through the package manager apt-get.

tar -zxvf polipo.tar.gz
tar -zxvf texinfo-5.2.tar.gz

###############################################################################

sh texinfo_setup.sh
sh polipo_setup.sh

###############################################################################
echo "copying necessary files"
echo "polipo" >> ~/.bashrc
cp -f inittab /etc/inittab
mkdir /var/cache/polipo
echo "INSTALL COMPLETE"
echo "Your IP Address is:"
hostname -I
echo "Starting Proxy..."
echo "Use CTRL + C to halt program"
polipo
exit
###############################################################################
End of File
###############################################################################
