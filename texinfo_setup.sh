#!/bin/bash
#texinfo_setup.sh
#this file sets up the texinfo package necessary for the polipo package

### TEXINFO INSTALL ###
echo "installing texinfo (required for polipo)"
cd texinfo-5.2
./configure --prefix=/usr
make
make install
echo "installed texinfo"

cd ..
