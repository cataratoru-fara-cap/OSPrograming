#!/bin/bash
#folosind un if  scrieti un script care verifica daca un nr este par sau impar
nr=$1
if [ $(( $nr % 2 )) -eq 0 ]; then
    echo "par"
else
    echo "impar"
fi
