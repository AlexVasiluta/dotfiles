#!/bin/sh

command -v nvim >/dev/null 2>&1
if [ $? -gt 0 ]; then
	echo "You do not have neovim installed"
	exit
fi

# Copy vim-plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# This will automatically do PlugInstall and quit neovim
nvim -c :PlugInstall -c :q -c :q
