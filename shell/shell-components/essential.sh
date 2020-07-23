# essential stuff
export TERM=xterm-256color
export PROMPT_EOL_MARK=""
export HISTFILE="$HOME/.zsh_history"
export HISTSIZE=100000
export SAVEHIST=100000
export BROWSER=firefox
# 'history' command timestamp format
HIST_STAMPS="yyyy-mm-dd"

case $SHELL in
	'/bin/zsh')
		setopt prompt_subst
		autoload -U compinit && compinit
		export PS1="[%n@%m %~]$ "
		;;
	*)
		export PS1="[\u@\h \w]$ "
		;;
esac
