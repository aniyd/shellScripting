#!/bin/bash

NUMBER_REGEX="^[0-9]{1,3}$"

if [[ $1 =~ $NUMBER_REGEX ]]; then
    if [ $# -eq 2 ]; then
        if [ -d "$2" ]; then
            echo "Path passed through arg is DIRECTORY."
            sudo chmod $1 -R $2
            echo "Permission set successfully."
            exit 0
        elif [ -f "$2" ]; then
            echo "Path passed through arg is FILE."
            sudo chmod $1 -R $2
            echo "Permission set successfully."
            exit 0
        else
            echo "Path doesn't exist."
            exit 1
        fi
    else
        echo "Invalid number of arguments."
        echo "There must be 2 args."
        echo "1. First one is permission code"
        echo "2. File/Folder with complete path"
        exit 0
    fi
else
    echo "First arg must be number of length 3."
    exit 1
fi


