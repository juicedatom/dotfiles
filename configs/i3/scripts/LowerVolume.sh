#!/bin/bash

# Raises the volume.
pactl set-sink-volume $(pacmd list-sinks | awk '/* index:/{print $3}') -5%
notify-send 'Volume Down' -t 100
