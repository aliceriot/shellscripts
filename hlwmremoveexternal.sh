#!/bin/bash

#quick script to remove external monitor (xrandr and herbstclient)

xrandr --output DP-2 --off
herbstclient detect_monitors
