# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias mydotfiles='git --git-dir=$HOME/.mydotfiles/ --work-tree=$HOME'

source ~/.config/broot/launcher/bash/br

eval "$(starship init bash)"
