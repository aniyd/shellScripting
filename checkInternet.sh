#!/bin/bash

wget -q --spider http://google.com

if [ $? -eq 0 ]; then
    echo "Internet connection available."
    exit 0
else
    echo "NO Internet."
    exit 1
fi