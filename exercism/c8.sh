#!/bin/bash
#2. Al doilea script sa scrie intr un fisier folosind 
#functiea fiecar rand, in ordine descrescatoare nr total de fisiere, un numar.

fiecare_rand () {
    num_files=$1
    
    while (( num_files -gt 0 ));do
        echo "$i" >> file
        sleep 1
        (($sum--))
    done 
}

fiecare_rand $1