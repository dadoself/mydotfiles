setopt nomatch
unsetopt appendhistory autocd beep extendedglob extendedhistory notify correct correct_all

bindkey -e

zstyle :compinstall filename "$HOME/.zshrc"

autoload -Uz compinit promptinit
compinit
promptinit

prompt grml

alias mydotfiles='git --git-dir=$HOME/.mydotfiles/ --work-tree=$HOME'

source ~/.config/broot/launcher/bash/br
