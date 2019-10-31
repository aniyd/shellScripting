#!/bin/bash

wget -q --spider http://google.com

if [ $? -eq 0 ]; then
    echo "Internet connection available."
else
    echo "NO Internet."
fi