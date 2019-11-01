#!/bin/bash

LINE_COUNT=0;

if [ $# -ne 1 ]; then
    echo "There must be only one args(FILE NAME with complete path)."
    exit 1
elif [ -f "$1" ]; then
    while IFS= read -r line
    do
        LINE_COUNT=$((LINE_COUNT+1))
    done < "$1"

    echo "Total number of lines in file = $LINE_COUNT"
    exit 0
else
    echo "File doesn't exist"
    exit 1
fi