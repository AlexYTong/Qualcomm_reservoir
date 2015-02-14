#!/bin/bash
#setup.sh

#Created on February 14, 2015 at ID hack for setup of a webcaching raspberry pi
#setup .sh attempts to install polipo through the package manager apt-get.

apt-get install texinfo -Y
tar -zxvf polipo.tar.gz
cd polipo
make all
sudo make install
echo "polipo" >> ~/.bashrc

###############################################################################
End of File
###############################################################################
