#!/bin/bash

#!/bin/bash
if [[ "$#" -ne 2 ]]; then
    echo "Usage: <dir1> <dir2>"
    exit 1
fi

echo "Fisierele comune sunt:"
comm -12 <(ls "$1") <(ls "$2")
