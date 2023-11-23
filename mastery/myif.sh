#!/bin/bash
if [ $# -lt 1 ] ; then
    read -p "Enter a name: "
    name=$REPLY
else
    name="$1"
fi

echo "Hello $name"
echo ""

if [ "mokhtar" = "Mohtar" ]; then
    echo "Strings are identical"
else
    echo "Strings are not identical"
fi

if [ -n "mokhtar" ] ; then 
    echo "String has 0 length"
else
    echo "String has N-0 length"
fi

echo ""

mydir=/home/mydir
if [ -d $mydir ] ; then
    echo "Directory $mydir exists."
else
    echo "Directory $mydir not found."
fi


exit 0
