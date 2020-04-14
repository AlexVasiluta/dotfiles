# essential stuff
export TERM=xterm-256color
export PROMPT_EOL_MARK=""
export HISTFILE="$HOME/.zsh_history"
export HISTSIZE=100000
export SAVEHIST=100000
export BROWSER=firefox
# 'history' command timestamp format
HIST_STAMPS="yyyy-mm-dd"

source ~/zsh-components/antigen_setup.zsh

source ~/zsh-components/bindings.zsh

setopt prompt_subst
autoload -U compinit && compinit

source ~/zsh-components/exports.zsh 
source ~/zsh-components/aliases.zsh
source ~/zsh-components/ix.zsh
