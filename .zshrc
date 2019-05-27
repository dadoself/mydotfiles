HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

setopt nomatch
unsetopt appendhistory autocd beep extendedglob notify correct correct_all

bindkey -e

zstyle :compinstall filename '~/.zshrc'

autoload -Uz compinit promptinit
compinit
promptinit

prompt grml

typeset -U path
path=(~/.local/bin $path[@])

alias mydotfiles='git --git-dir=$HOME/.mydotfiles/ --work-tree=$HOME'
alias sway='_JAVA_AWT_WM_NONREPARENTING=1 sway'
