#!/bin/bash

# Define variables
URL="https://github.com/schollz/croc/releases/download/v9.6.9/croc_v9.6.9_Linux-64bit.tar.gz"
FILENAME="croc_v9.6.9_Linux-64bit.tar.gz"

# Download the tar.gz file
wget $URL

# Extract the tar.gz file
tar -zxf $FILENAME

# Move the 'croc' executable to /usr/bin
sudo mv croc /usr/bin

# Clean up by removing the downloaded tar.gz file
rm $FILENAME

# Notify the user of completion
echo "croc has been installed to /usr/bin."
