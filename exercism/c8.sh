#!/bin/bash
#2. Al doilea script sa scrie intr un fisier folosind 
#functiea fiecar rand, in ordine descrescatoare nr total de fisiere, un numar.

fiecare_rand () {
    num_files=$1
    
    while (( $num_files>=0 ));do
        echo "$num_files" >> $1.txt
        sleep 1
        (( num_files-- ))
    done 
}

fiecare_rand $1