#!/bin/bash
#realizati doua scripturi astfel: 
#1. Primul script sa numere totalul de fisiere 
#din directorul curent si sa tirmita ca argument nr de fisiere . 
#2. Al doilea script sa scrie intr un fisier folosind 
#functiea fiecar rand, in ordine descrescatoare nr total de fisiere, un numar.

sum=0
for file in $(ls); do
    if [ -f "$file" ]; then
        sum=$(($sum + 1))
    fi
done
echo "Nr total de fisiere este $sum" >> $sum
c8.sh $sum