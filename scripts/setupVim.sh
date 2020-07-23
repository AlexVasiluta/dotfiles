#!/bin/bash

command -v nvim >/dev/null 2>&1
if [ $? -gt 0 ]; then
	echo "You do not have neovim installed"
	exit
fi

# This will automatically do PlugInstall and quit neovim
nvim -c :PlugInstall -c :q -c :q
