#!/bin/bash

xrandr --output HDMI2 --mode 1920x1080 --above eDP1
killall xscreensaver
xset -dpms
xset s off
