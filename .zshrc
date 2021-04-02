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

export _JAVA_AWT_WM_NONREPARENTING=1
export MOZ_ENABLE_WAYLAND=1
export VDPAU_DRIVER=va_gl
export XDG_CURRENT_DESKTOP=Unity

alias mydotfiles='git --git-dir=$HOME/.mydotfiles/ --work-tree=$HOME'
