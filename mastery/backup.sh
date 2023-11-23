#!/bin/bash
# Author: @lupulcelbun
# Script to promp to back up files and location
# The files will be search on from the user's home
# directory can only be backed up to a directory
# within $HOME
# Last edit 4/11/23
read -p "Which file type do you want to backup? " file_suffix
read -p "Which directory do you want to backup to " dir_name
# The next lines create the directory if it does not exist
test -d $HOME/$dir_name || mkdir -m 700 $HOME/$dir_name
# The find command will coopy the files that match the
# search criteria ie .sh . The  -path, -prune and -o 
# options are to exclude the backdirectory from the 
# backup.
find $HOME -path $HOME/$dir_name -prune -o \
-name "*$file_suffix" -exec cp {} $HOME/$dir_name/ \; 
exit 0 
