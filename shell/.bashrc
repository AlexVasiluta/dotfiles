# Inspired by zakkor's bash structure

# Source global definitions
if [ -f /etc/bashrc ]; then
	if [[ $__bashrc_bench ]]; then
		TIMEFORMAT="/etc/bashrc: %R"
		time . "/etc/bashrc"
		unset TIMEFORMAT
	else 
		. "/etc/bashrc"
	fi
fi


# My Fedora 32 installation lacks some XDG stuff, so I'd like to put it here

BASH_CONFIG_PATH=$HOME/.config/bash
BASH_DATA_PATH=$HOME/.local/share/bash

for conf in $BASH_CONFIG_PATH/config.d/*.bash; do
	if [[ $__bashrc_bench ]]; then
		TIMEFORMAT="$conf: %R"
		time . "$conf"
		unset TIMEFORMAT
	else 
		. "$conf"
	fi
done

[ -f ~/.bashrc.local ] && source ~/.bashrc.local

