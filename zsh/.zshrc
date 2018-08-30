export TERM=xterm-256color
export ZSH="$HOME/.oh-my-zsh"
export PROMPT_EOL_MARK=""
export HISTFILE="$HOME/.zsh_history"
export HISTSIZE=50000
export SAVEHIST=10000

ZSH_THEME="nreese"

# 'history' command timestamp format
HIST_STAMPS="yyyy-mm-dd"

plugins=(
  zsh-autosuggestions
)
# History
setopt extended_history

# Theme
autoload -U colors && colors
export LSCOLORS="Gxfxcxdxbxegedabagacad"
setopt auto_cd
setopt multios
setopt prompt_subst

# source $ZSH/oh-my-zsh.sh
source $ZSH/lib/completion.zsh
source $ZSH/lib/git.zsh
source $ZSH/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source $ZSH/custom/themes/nreese.zsh-theme

# Editor
export EDITOR="vim"

export SSH_KEY_PATH="~/.ssh/id_rsa"
export PATH=$PATH:$HOME/bin

# Aliases
alias grep="grep --color=auto --exclude-dir={.cvs,.git,.vcs,.hs}"
alias cd..="cd .."
alias reload="source ~/.zshrc"
alias ls="ls -la --color=auto"
alias tmux="tmux -2"
alias neofetch="neofetch --ascii ~/asciiart/tuxfux --ascii_colors 4 0 7"
