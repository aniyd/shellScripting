#! /bin/sh
if [ $# -eq 0 ]; then
    sudo apt-get upgrade -y
else
    sudo apt-get upgrade $1 -y
fi

echo "Process completed."