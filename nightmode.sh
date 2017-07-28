#!/bin/csh
# redscreen.csh Tue Jun 24 16:59:21 PDT 2014 Jeff Jahr

# Usage
if ($1 == "-h") then
	echo "$0 [-h | dim | inv | off]"
	exit
endif

# Return to normal settings
if ( $1 == "off" ) then
	xcalib -clear
	exit
endif

if ($1 == "inv" ) then
	xcalib -i -a
	exit
endif

# Make the screen darker
if ($1 == "dim" ) then
	xcalib -clear
	xcalib -co 30 -alter
	exit
endif

# Turn the screen red
# xcalib
xcalib -clear
#xcalib -co 60 -alter
xcalib -green .1 0 1 -alter
xcalib -blue .1 0 1 -alter
xcalib -red 0.5 1 40 -alter
