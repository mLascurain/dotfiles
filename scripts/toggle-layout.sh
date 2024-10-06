#!/bin/bash

# Verifica el layout actual
current_layout=$(setxkbmap -query | grep layout | awk '{print $2}')

# Alterna entre us y es
if [ "$current_layout" = "us" ]; then
    setxkbmap es
else
    setxkbmap us
fi
