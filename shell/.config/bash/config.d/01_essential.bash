# essential stuff

# My Fedora 32 installation lacks some XDG stuff, so I'd like to put it here
export XDG_CONFIG_HOME=$HOME/.config 
export XDG_CACHE_HOME=$HOME/.cache 
export XDG_DATA_HOME=$HOME/.local/share

export HISTFILE="$BASH_DATA_PATH/history"

export BROWSER=firefox
export VDPAU_DRIVER=va_gl

export TERM=xterm-256color
export PS1="[\u@\h \w]$ "


if [ $SHELL = "/bin/bash" ]; then
	. /usr/share/bash-completion/bash_completion
fi
