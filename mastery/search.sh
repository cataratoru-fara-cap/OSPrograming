usage="Usage: search.sh file string operation"

if [[ ! $# -eq 3 ]] ;  then
    echo "$usage"
    exit 2
fi

[ ! -f $1 ] && exit 3

case $3 in 
    [cC])
        mesg="Counting the matches in $1 of $2"
        opt="-c"
        ;;
    [pP])
        mesg="Print the matches in $1 of $2"
        opt=""
        ;;
    [dD])
        mesg="Printing all the lines BUT those matching $2 from $1"
        opt="-v"
        ;;
    *) echo "Could not evaluate $1 $2 $3"
        ;;
esac
echo $mesg
grep $opt $2 $1
