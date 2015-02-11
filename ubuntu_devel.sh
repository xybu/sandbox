#!/bin/bash

sudo apt-get update && sudo apt-get upgrade
sudo apt-get -y install build-essential cmake automake gcc g++ gdb valgrind nemiver curl vim-gtk gawk ssh libcurl4-openssl-dev python-software-properties software-properties-common
# sudo apt-get -y install openjdk-7-jdk 

# Install GGCov
sudo apt-get -y install libglade2-0 libgnomeui-0 binutils
sudo apt-get install libgtk+2.0 libgtkmm-2.4-dev glib-2.0 libxml
cd /tmp
wget http://iweb.dl.sourceforge.net/project/ggcov/ggcov-0.9.tar.gz
tar xvf ggcov-0.9.tar.gz && cd ggcov-0.9
./configure
make
sudo make install
