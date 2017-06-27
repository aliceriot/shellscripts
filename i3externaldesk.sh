#!/bin/bash

xrandr --output DP2-2 --auto --right-of eDP1 &&
xrandr --output eDP1 --off &&
xrandr --output DP2-1 --auto --right-of DP2-2 # &&
# feh --bg-max ~/Pictures/tarsands.jpg
