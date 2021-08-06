# If not running interactively, don't do anything
[[ $- != *i* ]] && return

source ~/.config/broot/launcher/bash/br

eval "$(starship init bash)"
