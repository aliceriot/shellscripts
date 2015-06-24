#!/bin/bash

xrandr-align monitor --input="ELAN Touchscreen" &
xrandr --output eDP1 --rotate left
synclient TouchpadOff=$(synclient -l | grep -c 'TouchpadOff.*=.*0')
