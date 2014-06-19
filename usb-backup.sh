#!/bin/bash

rsync -avz ~/ /mnt/usb

##note that this should not be run as root! will change ownership of the directory to root
## AND not copy everything
