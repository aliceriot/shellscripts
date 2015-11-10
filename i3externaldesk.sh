#!/bin/bash

xrandr --output HDMI1 --auto --above eDP1 &&
xrandr --output eDP1 --off && 
feh --bg-max ~/Pictures/parkspins.jpg
