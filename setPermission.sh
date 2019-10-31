#!/bin/bash
echo $2
if [ $# -eq 2 ]; then
    if [ -d "$2" ]; then
        echo "Path passed through arg is DIRECTORY."
        sudo chmod $1 -R $2
        echo "Permission set successfully."
    elif [ -f "$2" ]; then
        echo "Path passed through arg is FILE."
        sudo chmod $1 -R $2
        echo "Permission set successfully."
    else
        echo "Path doesn't exist."
    fi
else
    echo "Invalid number of arguments."
    echo "There must be 2 args."
    echo "1. First one is permission code"
    echo "2. File/Folder with complete path"
fi


