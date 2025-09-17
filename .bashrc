# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export BEMENU_BACKEND=curses

source ~/.config/broot/launcher/bash/br

eval "$(starship init bash)"
eval "$(zoxide init bash)"
