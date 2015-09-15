#!/bin/bash

xinput --set-prop --type=int --format=8 13 "Evdev Wheel Emulation" 1
xinput --set-prop --type=int --format=8 13 "Evdev Wheel Emulation Button" 2
xinput --set-prop --type=int --format=8 13 "Evdev Wheel Emulation Axes" 6 7 4 5
