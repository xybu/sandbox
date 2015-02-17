#!/bin/bash

wget http://ubuntu.mirrors.tds.net/ubuntu/pool/main/b/binutils/binutils_2.25-2ubuntu2_amd64.deb

wget http://ubuntu.mirrors.tds.net/ubuntu/pool/universe/g/ggcov/ggcov_0.9-6ubuntu12_amd64.deb

sudo dpkg -i ggcov_0.9-6ubuntu12_amd64.deb

sudo apt-get -f install
