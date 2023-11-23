#!/bin/bash 
mean=0
for num in {1..4};do
    read i
    mean=$(( $mean + $i ))
done
echo "scale=2; $mean / 4" | bc
