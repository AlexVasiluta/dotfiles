#export TERM=xterm-256color
export TERM=xterm-256color
export ZSH="$HOME/.oh-my-zsh"
export PROMPT_EOL_MARK=""
export HISTFILE="$HOME/.zsh_history"
export HISTSIZE=50000
export SAVEHIST=10000
# 'history' command timestamp format
HIST_STAMPS="yyyy-mm-dd"
source ~/antigen.zsh

antigen use oh-my-zsh
#antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
#antigen theme agnoster
antigen theme raindeer44/vero
antigen apply

# Theme
#autoload -U colors && colors
#export LSCOLORS="Gxfxcxdxbxegedabagacad"
#setopt auto_cd
#setopt multios
setopt prompt_subst

#source ~/antigen.zsh
# kitty + complete setup zsh | source /dev/stdin
#source $ZSH/oh-my-zsh.sh
# source $ZSH/lib/completion.zsh
# source $ZSH/lib/git.zsh
# source $ZSH/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
# source $ZSH/custom/themes/nreese.zsh-theme

autoload -U compinit && compinit
# Editor
export EDITOR="vim"
export VIRTUAL_ENV_DISABLE_PROMPT=
export SSH_KEY_PATH="~/.ssh/id_rsa"
export PATH=$PATH:$HOME/bin:$HOME/.local/bin
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export GOPATH="$HOME/Projects/go"

# Aliases
alias songdownload="youtube-dl -f bestaudio --extract-audio --audio-format mp3 --audio-quality 0"
alias grep="grep --color=auto --exclude-dir={.cvs,.git,.vcs,.hs}"
alias cd..="cd .."
alias reload="source ~/.zshrc"
alias ls="ls -la --color=always"
alias tmux="tmux -2"
alias listup="apt list --upgradable"

echo -n $(($(date +%Y)+1)) | lolcat -F 1; echo " will be the year of the Linux desktop" | lolcat
