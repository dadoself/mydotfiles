setopt nomatch
unsetopt appendhistory autocd beep extendedglob extendedhistory notify correct correct_all

bindkey -e

zstyle :compinstall filename "$HOME/.zshrc"

autoload -Uz compinit promptinit
compinit
promptinit

prompt grml

source ~/.config/broot/launcher/bash/br
