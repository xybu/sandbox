#!/bin/bash

sudo apt-get update && sudo apt-get upgrade
sudo apt-get -y install ack-grep build-essential cmake automake gcc g++ gdb valgrind nemiver curl vim gawk ssh libcurl4-openssl-dev openssl python-software-properties software-properties-common ack-grep
sudo apt-get -y install p7zip-full
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install oracle-java8-installer
# sudo apt-get -y install openjdk-8-jdk 
# sudo apt-get -y install nautilus-dropbox
# sudo apt-get -y install idle3
sudo apt-get -y install git mercurial
alias vi=vim

# Configure Mercurial
echo "[ui]" > ~/.hgrc
echo "username = Xiangyu Bu <xybu92@live.com>" >> ~/.hgrc
echo "verbose = True" >> ~/.hgrc

# Configure Git
git config --global user.name "Xiangyu Bu"
git config --global user.email "xybu92@live.com"
git config --global core.editor vim

# Configure Python
wget -O- https://bootstrap.pypa.io/get-pip.py | sudo python
