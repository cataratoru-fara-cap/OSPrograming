!#/bin/bash
# bucla until care afiseaza nr de la 10 la 1 si afiseaza la fiecare iteratie un triunghi
i=10
sum=""
until ((i <= 0));do
    sum+="$i"
    echo $sum
    ((i--))
done