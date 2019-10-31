#! /bin/sh
if [ $# -eq 0 ]; then
    sudo apt-get upgrade -y
    echo "Process completed."
    exit 0
elif [ $# -eq 1 ]; then
    sudo apt-get upgrade $1 -y
    echo "Process completed."
    exit 0
else
    echo "Invalid Args."
    exit 1
fi

