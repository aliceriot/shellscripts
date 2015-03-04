#!/bin/bash
DIRLIST=$(find "$1" -type d)
for d in $DIRLIST
do
[ $d != "." -a $d != ".." ] && count=$(find "$d" -maxdepth 1 -type f | wc -l)
printf "Directory name :$d $count \n"
done
