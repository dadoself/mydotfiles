setopt nomatch
unsetopt appendhistory autocd beep extendedglob extendedhistory notify correct correct_all

bindkey -e

export BEMENU_BACKEND=curses

source ~/.config/broot/launcher/bash/br

zstyle :compinstall filename "$HOME/.zshrc"

autoload -Uz compinit promptinit
compinit
promptinit

prompt grml
