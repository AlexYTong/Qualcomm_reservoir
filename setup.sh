#!/bin/bash
#setup.sh

#Created on February 14, 2015 at ID hack for setup of a webcaching raspberry pi
#setup .sh attempts to install polipo through the package manager apt-get.

sudo apt-get update
sudo apt-get upgrade
sudo apt-get install polipo
sudo cp config /etc/polipo

###############################################################################
End of File
###############################################################################
