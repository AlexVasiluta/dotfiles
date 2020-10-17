# essential stuff
export BROWSER=firefox
export VDPAU_DRIVER=va_gl

export TERM=xterm-256color
export PS1="[\u@\h \w]$ "


if [ $SHELL = "/bin/bash" ]; then
	. /usr/share/bash-completion/bash_completion
fi
