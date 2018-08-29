export TERM=xterm-256color
export ZSH="$HOME/.oh-my-zsh"
export PROMPT_EOL_MARK=""

ZSH_THEME="nreese"

# 'history' command timestamp format
HIST_STAMPS="yyyy-mm-dd"

plugins=(
  git
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

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
alias ls="ls -la --color=auto"
alias tmux="tmux -2"
alias neofetch="neofetch --ascii ~/asciiart/tuxfux --ascii_colors 4 0 7"
