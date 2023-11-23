#!/bin/bash
#sum
sum=0
for num in $@;do
    sum=$(( $sum + $num ))
done


mean=0
for num in $@;do
    mean=$(( $mean + $num ))
done
mean=$(( $mean/$# ))


min=$1
for num in $@;do
    if [ $num -lt $min ];then
        min=$num
    fi
done

max=$1
for num in $@;do
    if [ $num -gt $max ];then
        max=$num
    fi
done

echo "sum is $sum"
echo "mean is $mean"
echo "min is $min"
echo "max is $max"

