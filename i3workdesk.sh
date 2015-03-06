#!/bin/bash

xrandr --output VGA1 --auto --right-of LVDS1 &&
xrandr --output LVDS1 --off &&
xrandr --output HDMI1 --auto --right-of VGA1 &&
wallpaperReset.sh
