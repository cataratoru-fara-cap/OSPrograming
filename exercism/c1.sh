#!/bin/bash
#utilizand un ciclu for scrieti un script care afiseaza toate fisierele din folderul curent
for file in $(ls); do
    echo $file
done