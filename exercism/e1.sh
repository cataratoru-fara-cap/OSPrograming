!#/bin/bash
#write a bash script to read from a file line by line, 
#using a for loop to count the read elements and send each element to another file 
#and display the number of read elements.

counter=0
IFS=$'\n' # set the Internal Field Separator to newline
for LINE in $(cat "$1"); do
    echo "$LINE" 
    (( counter++ ))
done >> "lines.txt"
echo $counter

#to count chars in a string
string="Hello, World!"
length=${#string}
for ((i = 0; i < length; i++)); do
    char="${string:i:1}"
    echo "Character at position $i: $char"
done