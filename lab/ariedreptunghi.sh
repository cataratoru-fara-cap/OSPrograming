#!/bin/bash
read -p "Introdu Lungime " lungime
read -p "Introdu Latime " latime

if [ $lungime -lt 0 ]; then
    lungime=$lungime*-1
fi
if [ $latime -lt 0 ]; then
    latime=$latime*-1
fi

echo $(( $lungime * $latime ))
