#! /bin/bash
myoutput=""

if  [ $(( $1 % 3 )) == 0 ]; then
    myoutput+="Pling"
fi

if  [ $(( $1 % 5 )) == 0 ]; then
    myoutput+="Plang"
fi

if  [ $(( $1 % 7 )) == 0 ]; then
    myoutput+="Plong"
fi

if [ -z "$myoutput" ]; then
    myoutput="$1"
fi

echo $myoutput

