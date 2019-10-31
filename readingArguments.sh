#!/bin/sh
echo "Total number of arguments passed = $#\n"
echo "Following arguments passed through command-line:"

COUNT=0
for arg in "$@"
do
    COUNT=$((COUNT+1))
    echo "${COUNT} ${arg}"
done
exit 0
