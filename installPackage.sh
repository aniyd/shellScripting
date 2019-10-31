#!/bin/sh
sudo apt-get update  # To get the latest package lists
sudo apt-get install $1 -y
echo "Process completed."
exit 0
#etc.