# Inspired by zakkor's bash structure

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi


# My Fedora 32 installation lacks some XDG stuff, so I'd like to put it here
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share

BASH_CONFIG_PATH=$XDG_CONFIG_HOME/bash
BASH_DATA_PATH=$XDG_DATA_HOME/bash

export HISTFILE="$BASH_DATA_PATH/history"

mkdir -p $BASH_DATA_PATH
mkdir -p $BASH_CONFIG_PATH

for conf in $BASH_CONFIG_PATH/config.d/*.bash; do
	. $conf
done

[ -f ~/.bashrc.local ] && source ~/.bashrc.local
