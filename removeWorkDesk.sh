#!/bin/bash

xrandr --output HDMI1 --off &&
xrandr --output LVDS1 --auto --right-of VGA1 &&
xrandr --output VGA1 --off &&
wallpaperReset.sh
