#!/bin/bash

if [[ ! -z "$PYENV_ROOT" ]]; then
	export PATH="$PYENV_ROOT/bin:$PATH"
fi

if [[ -d "$HOME/bin" ]]; then
	export PATH="$HOME/bin:$PATH"
fi

if [[ -d "$HOME/.local/bin" ]]; then
	export PATH="$HOME/.local/bin:$PATH"
fi

if [[ -d "$HOME/.yarn/bin" ]]; then
    export PATH="$PATH:$HOME/.yarn/bin"
fi 

