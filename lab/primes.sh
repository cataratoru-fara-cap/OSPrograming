#!/bin/bash
array=()

for i in {1..4}; do
    read num
    array[i]=$num
    i+=1
done

function primes() {
p=1
for((i=2;i<$1 ;i++)); do
    if (( $(($1 % i)) == 0 )); then
        p=0
    fi
done

if [ $p -eq 1 ]; then
    echo " $1 is prime "
else
    echo " $1 not prime "
fi
}

for i in ${array[@]}; do
    primes $i
done
