#!/usr/bin/bash
#
#
# Load pyenv automatically by appending
# the following to
# ~/.bash_profile if it exists, otherwise ~/.profile (for login shells)
# and ~/.bashrc (for interactive shells) :

export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"

command -v pyenv >/dev/null 2>&1
if [ $? -eq 0 ]; then
	eval "$(pyenv init -)"

	# Restart your shell for the changes to take effect.

	# Load pyenv-virtualenv automatically by adding
	# the following to ~/.bashrc:

	eval "$(pyenv virtualenv-init -)"
fi

