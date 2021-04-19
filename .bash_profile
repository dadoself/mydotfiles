export HISTFILE=~/.histfile
export HISTSIZE=5000
export HISTFILESIZE=$HISTSIZE

export VDPAU_DRIVER=va_gl

export PATH=~/.local/bin:$PATH

if [ "$(tty)" = "/dev/tty1" ]; then
    exec env $(cat ~/.config/sway/env) sway
fi

[[ -f ~/.bashrc ]] && . ~/.bashrc
