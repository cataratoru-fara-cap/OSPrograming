#!/bin/bash
#realizati un script folosind for care sa numere totalul fisierelor 
#din cur dir ca rezultaat, sa creeze un fisier text sub forma (rezultat_nr.fisiere_fisiere) 
#in care sa scrie, pe prima linie, "Nr total de fisiere este.."
sum=0
for file in $(ls); do
    if [ -f "$file" ]; then
        sum=$(($sum + 1))
    fi
done
echo "Nr total de fisiere este $sum" >> {"$sum.fisiere_fisiere"}