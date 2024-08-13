#!/bin/bash

# Define variables
URL="https://github.com/schollz/croc/releases/download/v9.6.9/croc_v9.6.9_macOS-ARM64.tar.gz"
FILENAME="croc_v9.6.9_macOS-ARM64.tar.gz"
DESTINATION="/opt/homebrew/bin/croc"

# Download the tar.gz file
wget $URL

# Extract the tar.gz file
tar -zxf $FILENAME

# Ask for user confirmation before moving the file
echo "You are about to move the 'croc' executable to $DESTINATION."
read -p "Are you sure you want to proceed? (y/n): " CONFIRM

# Check user input
if [ "$CONFIRM" = "y" ]; then
    # Move the 'croc' executable to /opt/homebrew/bin
    sudo mv croc $DESTINATION
    echo "'croc' has been moved to $DESTINATION."
else
    echo "Operation cancelled. The 'croc' executable will not be moved."
fi

# Clean up by removing the downloaded tar.gz file
rm $FILENAME

# Notify the user of completion
echo "Script execution completed."
