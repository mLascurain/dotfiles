#!/bin/bash

# Nombre del monitor para alternar
MONITOR="HDMI-1"

# Obtener el estado actual del monitor
STATE=$(xrandr --query | grep "$MONITOR" | awk '{print $2}')

if [ "$STATE" == "connected" ]; then
    xrandr --output $MONITOR --off
else
    xrandr --output HDMI-1 --mode 1920x1080 --same-as DP-1
fi
