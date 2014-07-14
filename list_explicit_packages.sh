#!/bin/bash
pacman -Qei $(pacman -Qu|cut -d" " -f 1)|awk ' BEGIN {FS=":"}/^Name/{printf("\033[1;36m%s\033[1;37m", $2)}/^Description/{print $2}'


## this lists all of the packages explicitly installed (i.e. with a pacman -S foo command)
## on the system
