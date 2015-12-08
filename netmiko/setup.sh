#!/bin/bash

## This script will install ciscoconfparse

# Installer variables
DOWNDIR=/tmp/downloads

# Required Packages
apt-get install python-setuptools

# Download and install ciscoconfparse
mkdir $DOWNDIR
wget --no-check-certificate -N https://github.com/ktbyers/netmiko/archive/v0.2.5.tar.gz -P $DOWNDIR/
cd $DOWNDIR
tar -zxvf $DOWNDIR/v0.2.5.tar.gz 
cd $DOWNDIR/netmiko-0.2.5 
python setup.py install

exit 0
