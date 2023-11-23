#!/bin/bash
echo 
read -s -p "Hello $(basename $0)! May I ask your name: " name
echo "Hello $name"
read -n1 -p "Press any key to exit"
echo
exit 0
