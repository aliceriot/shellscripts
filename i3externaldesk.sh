#!/bin/bash

xrandr --output DP-2 --auto --right-of eDP1 &&
xrandr --output eDP1 --off &&
feh --bg-max ~/Pictures/tarsands.jpg
