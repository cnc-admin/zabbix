#!/bin/bash

## This script will install ciscoconfparse

# Installer variables
DOWNDIR=/tmp/downloads
VERSION="1.2.39"

# Required Packages
apt-get install python-setuptools

# Download and install ciscoconfparse
mkdir $DOWNDIR
wget --no-check-certificate -N https://pypi.python.org/packages/source/c/ciscoconfparse/ciscoconfparse-1.2.39.tar.gz -P $DOWNDIR/
cd $DOWNDIR
tar -zxvf $DOWNDIR/ciscoconfparse-1.2.39.tar.gz
cd $DOWNDIR/ciscoconfparse-$VERSION
python setup.py install

exit 0
