#!/bin/bash

# Install Mercurial
# mercurial for hg
# python-dev for Python.h
# python-pip for pip2

current_dir=`pwd`

sudo apt-get install mercurial python-dev python-pip

cd /tmp

# Install hg-github
sudo pip install hg-git

# Install hg-histedit
hg clone ssh://hg@bitbucket.org/durin42/histedit
cd histedit
sudo python setup.py build
sudo python setup.py install
cd ..
sudo rm -rf histedit

# Install facebook extensions
hg clone ssh://hg@bitbucket.org/facebook/hg-experimental
cd hg-experimental
sudo python setup.py build
sudo python setup.py install
cd ..
sudo rm -rf hg-experimental

cd $current_dir
python ./hg_setup_hgrc.py
