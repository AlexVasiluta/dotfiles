# Aliases

command -v trash >/dev/null 2>&1
if [ $? -eq 0 ]; then
	alias rm="trash"
fi

alias grep="grep --color=auto --exclude-dir={.cvs,.git,.vcs,.hs}"
alias egrep="egrep --color=auto --exclude-dir={.cvs,.git,.vcs,.hs}"
alias fgrep="fgrep --color=auto --exclude-dir={.cvs,.git,.vcs,.hs}"


alias ls="ls -la --color=auto"
alias l="ls -h"

alias vim="nvim"
alias pip="python -m pip"
