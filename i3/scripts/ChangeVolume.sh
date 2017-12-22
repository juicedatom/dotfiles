#!/bin/bash

# Raises the volume.
pactl set-sink-volume $(pacmd list-sinks | awk '/* index:/{print $3}') $1
notify-send "Change Volume by $1" -t 100
