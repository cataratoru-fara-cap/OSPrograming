#!/bin/bash
#un script care sa permita selectarea de la tastatura a functiilor exxterne scriptului dupa cum urmeaza
#1 media aritmetica a 4 nr introiduse de la tastatura
#2 verificarea daca unul din cele 4 numere introduse de la tastatura este numar prim
#3 listeaza structura folderelor in directorul in care scriptul ruleaza
#4 caurta in directorul in care scriptul ruleaza fisiere cu nume similar sau identic cu un nume introdus de la tastatura
while [ -n "$1" ];do
    case "$1" in
        -mean) mean;;
        -prim) bash primes.sh;;
        -list) bash list.sh;;
        -nume) bash nume.sh;;
        --) shift
        break ;;
        *) echo "Option $1 not an option";;
    esac
    shift
done
