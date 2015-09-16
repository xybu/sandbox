#!/bin/bash

sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update && sudo apt-get upgrade
sudo apt-get -y install ack-grep build-essential cmake automake gcc g++ gdb valgrind nemiver curl vim-gtk gawk ssh libcurl4-openssl-dev python-software-properties software-properties-common ack-grep
sudo apt-get -y install p7zip-full
sudo apt-get install oracle-java8-installer
# sudo apt-get -y install openjdk-8-jdk 
# sudo apt-get -y install nautilus-dropbox
# sudo apt-get -y install idle3
