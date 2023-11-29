#!/bin/bash
#Write a script that reads numbers from an external file named numbers.txt,
#multiplies each number by 2.5 and saves the integer result in a file named results.in 
#and the real numbers in a file results.bc

while read line; do
    int=$line
    float=$line
    echo "($int * 2.5) / 1" | (bc) >> "numbers.txt"
    echo "scale=2; $float * 2.5" | (bc) >> "results.bc"

done < myNums.txt