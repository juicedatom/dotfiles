#!/bin/bash


# Raises the volume.
pactl set-sink-volume $(pacmd list-sinks | awk '/* index:/{print $3}') $1

pkill -RTMIN+1 i3blocks
