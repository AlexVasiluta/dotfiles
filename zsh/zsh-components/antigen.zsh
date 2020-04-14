# ANTIGEN

source ~/zsh-components/antigen/antigen.zsh

antigen use oh-my-zsh
#antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions


antigen bundle $HOME/zsh-components/nreese nreese.zsh-theme
#antigen theme raindeer44/vero

antigen apply

