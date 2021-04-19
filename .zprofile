export HISTFILE=~/.histfile
export HISTSIZE=5000
export SAVEHIST=$HISTSIZE

export VDPAU_DRIVER=va_gl

typeset -U path
path=(~/.local/bin $path)
export PATH

if [ "$(tty)" = "/dev/tty1" ]; then
    exec env $(cat ~/.config/sway/env) sway
fi
