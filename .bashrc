# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc

eval "$(fzf --bash)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

alias xampp='cd /opt/lampp/'
alias config='cd ~/.config/'
alias wsp='cd ~/workspace/'
alias i3='nvim ~/.config/i3/config'

clear_scrollback_and_screen() {
  # Limpia la pantalla
  clear

  # Si estás en una sesión de tmux, limpia el historial
  if [ -n "$TMUX" ]; then
    tmux clear-history
  fi
}

# Vincula Ctrl + L a la función
bind -x '"\C-l": clear_scrollback_and_screen'

fastfetch
