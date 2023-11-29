#!/bin/bash
#List any files or folders that contain numbers in their name
for file in *; do
    if [[ file =~ [^0-9] ]]; then
        echo $file
    fi
done