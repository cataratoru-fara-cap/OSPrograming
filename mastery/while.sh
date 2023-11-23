#!/bin/bash

while [ -n "$1" ]
do
case "$1" in
-a) echo "-a option is used" ;;
-b) echo "-b option is used" ;;
-c) echo "-c option is used" ;;
--) shift
break ;; #breaks iteration over options when encounters --
*) echo "Option $1 not an option" ;;
esac
shift
done
#iteration over oprions done
#comencing iteration over params
num=1
for param in $@
do
echo "#$num: $param"
num=$(($num + 1))
done