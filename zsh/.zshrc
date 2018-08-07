# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="brainquick"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# 'history' command timestamp format
HIST_STAMPS="yyyy-mm-dd"

plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

# User config

# export MANPATH="/usr/local/man:$MANPATH"

# export LANG=en_US.UTF-8

# Editor
export EDITOR="vim"

# SSH
export SSH_KEY_PATH="~/.ssh/id_rsa"

export PATH=$PATH:$HOME/bin
# Aliases
alias cd..="cd .."
alias RELOAD="source ~/.zshrc"
alias lla="ls -la"

