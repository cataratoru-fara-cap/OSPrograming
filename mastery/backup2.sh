#!/bin/bash
# Author: @lupulcelbun
# Script to promp to back up files and location
# The files will be search on from the user's home
# directory can only be backed up to a directory
# within $HOME
# Last edit 4/11/23
read -p "Choose between h, m, l file compresion" file_compression
read -p "Which directory do you want to backup to " dir_name
# The next lines create the directory if it does not exist

[ -d $HOME/$dir_name ] || mkdir -m 700 $HOME/$dir_name
backup_dir=$HOME/$dir_name
tar_l="-cvf $backup_dir/b.tar --exclude $backup_dir $HOME" 
tar_m="-czvf $backup_dir/b.tar.gz --exclude $backup_dir $HOME" 
tar_h="-cjvf $backup_dir/b.tar.bzip2 --exclude $backup_dir $HOME" 

if [ $file_compression = "l"] ; then
    tar_opt=$tar_l
elif [ $file_compression = "m"] ; then
    tar_opt=$tar_m
else
    tar_opt=$tar_h
fi
tar $tar_opt
exit 0 
