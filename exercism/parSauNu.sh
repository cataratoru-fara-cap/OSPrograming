#!/bin/bash
parSauNu () {
    if (( "$1"%2==0 )); then
        echo par
    else
        echo impar
    fi
} 

if ! [[ "$1"=~[^0-9] ]] || [[ "$#"!=1 ]]; then
    echo "Usage mkfiles: <number>"
    exit 1
elif (( "$1">100 )); then
    echo "Number must be less than 100"
    exit 1
else    
    parSauNu "$1"
    for (( i="$1";i<=100;i++ )); do
        echo $i
    done
fi
