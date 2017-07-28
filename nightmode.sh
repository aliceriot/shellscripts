#!/bin/bash
# redscreen.csh Tue Jun 24 16:59:21 PDT 2014 Jeff Jahr

# Turn the screen red
# xcalib

killall redshift
xcalib -clear
#xcalib -co 60 -alter
xcalib -green .1 0 1 -alter
xcalib -blue .1 0 1 -alter
xcalib -red 0.5 1 40 -alter
