# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias mydotfiles='git --git-dir=$HOME/.mydotfiles/ --work-tree=$HOME'
alias sway='env $(cat ~/.config/sway/env) sway'

source ~/.config/broot/launcher/bash/br
