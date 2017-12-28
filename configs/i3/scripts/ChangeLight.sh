#!/bin/bash

xbacklight -inc $1 
#notify-send "Backlight: $(xbacklight)" -t 1

pkill -RTMIN+2 i3blocks
