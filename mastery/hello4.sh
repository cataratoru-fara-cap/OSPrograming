#!/bin/bash
echo "You are using $(basename $0)"
test -z $1 || echo "Hello $1"
[ $HOME = $PWD ] && echo "we are home"
[ $# -gt 0 ] && echo "at least one param given"

exit 0
