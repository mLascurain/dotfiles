#!/bin/bash

# Archivo temporal para verificar si ya se ejecutó tmux
SESSION_FILE="/tmp/kitty_tmux_started"

# Verifica si ya se ha ejecutado tmux
if [ ! -f "$SESSION_FILE" ]; then
  # Si no se ha ejecutado antes, inicia tmux
  tmux attach || tmux new
  # Crea el archivo temporal para indicar que tmux ya se ejecutó
  touch "$SESSION_FILE"
else
  # Si tmux ya se ejecutó, simplemente abre el shell normal (bash o zsh)
  exec bash  # Cambia 'bash' por tu shell preferido si es necesario
fi

