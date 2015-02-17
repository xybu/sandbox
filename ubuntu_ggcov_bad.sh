#!/bin/bash

# Install GGCov
sudo apt-get -y install gconf-service gconf2 libc6 libdb5.3 libgconf-2-4 libglade2-0  binutils
# libglade2-dev libglib2.0-dev libgnomeui-dev libgtk2.0-dev
# sudo apt-get install libgtk+2.0 libgtkmm-2.4-dev
sudo apt-get install libgtk2.0-0 libgtk2.0-0 libglib2.0-0 libgnome2-0 libgnomecanvas2-0 libgnomeui-0 libpango-1.0-0 libpopt0 libstdc++6 libx11-dev libxml2
cd /tmp
wget http://iweb.dl.sourceforge.net/project/ggcov/ggcov-0.9.tar.gz
tar xvf ggcov-0.9.tar.gz && cd ggcov-0.9
./configure
make
sudo make install
