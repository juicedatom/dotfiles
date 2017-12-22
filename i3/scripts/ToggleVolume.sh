#!/bin/bash

# Toggle volume
pactl set-sink-mute $(pacmd list-sinks |awk '/* index:/{print $3}') toggle
notify-send 'Toggle Mute' -t 100
