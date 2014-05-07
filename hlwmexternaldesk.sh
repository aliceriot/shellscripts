#!/bin/bash

#quick script to add my external monitor (xrandr) and add it to herbstluftwm (herbstclient)

xrandr --output DP-2 --mode 1920x1080 --right-of LVDS-1
herbstclient add_monitor 1920x1080+1680+0 "term"
