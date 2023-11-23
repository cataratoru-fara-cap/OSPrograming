#!/bin/bash
echo "You are using $(basename $0)"
echo "Hello $*"

myarr=(one two three four five)
echo ${myarr[1]}
echo ${myarr[*]}
unset myarr[1]
echo ${myarr[1]}
unset myarr
echo $myarr
exit 0

