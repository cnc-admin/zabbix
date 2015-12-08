#!/bin/bash

## This script will install and configure the tftp server for Ubuntu

# Installer variables

# Required Packages
apt-get install tftpd-hpa

# Backup the tftp config file
cp /etc/default/tftpd-hpa ~

# Print the required changes to the tftp file
echo " "
echo " "
sleep 1
echo " "
echo "...Make these changes to the mentioned file"
echo " "
echo '# /etc/default/tftpd-hpa'
echo 'TFTP_OPTIONS="-s -c -l"'
echo " "
echo " "
echo " "

# Setup first example switch file
echo "...You have to create a text file manually for each switch, for security reasons"
echo " "
echo "This script will create one called switch-01.txt"
echo "touch /var/lib/tftpboot/switch-01.txt"
echo "chmod 777 /var/lib/tftpboot/switch-01.txt"
echo " "
echo " "

# Actually create the file
touch /var/lib/tftpboot/switch-01.txt
chmod 777 /var/lib/tftpboot/switch-01.txt



exit 0
