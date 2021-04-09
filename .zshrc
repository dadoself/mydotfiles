setopt nomatch
unsetopt appendhistory autocd beep extendedglob extendedhistory notify correct correct_all

bindkey -e

zstyle :compinstall filename '~/.zshrc'

autoload -Uz compinit promptinit
compinit
promptinit

prompt grml

alias mydotfiles='git --git-dir=$HOME/.mydotfiles/ --work-tree=$HOME'
alias sway='env $(cat ~/.config/sway/env) sway'

source ~/.config/broot/launcher/bash/br
