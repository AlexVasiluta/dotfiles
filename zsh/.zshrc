export TERM=xterm-256color
export ZSH="$HOME/.oh-my-zsh"
export PROMPT_EOL_MARK=""
export HISTFILE="$HOME/.zsh_history"
export HISTSIZE=50000
export SAVEHIST=10000
# 'history' command timestamp format
HIST_STAMPS="yyyy-mm-dd"
source ~/antigen.zsh
source ~/.nix-profile/etc/profile.d/nix.sh

antigen use oh-my-zsh
#antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions

# Theme messes up if you reload, so i added this safe break
if [ -z $ALREADYLOADED ]
then
	antigen theme alexvasiluta/nreese
	#antigen theme raindeer44/vero
fi
export ALREADYLOADED=1

antigen apply

ix() {
     local opts
     local OPTIND
     [ -f "$HOME/.netrc" ] && opts='-n'
     while getopts ":hd:i:n:" x; do
         case $x in
             h) echo "ix [-d ID] [-i ID] [-n N] [opts]"; return;;
             d) $echo curl $opts -X DELETE ix.io/$OPTARG; return;;
             i) opts="$opts -X PUT"; local id="$OPTARG";;
             n) opts="$opts -F read:1=$OPTARG";;
         esac
     done
	 shift $(($OPTIND - 1))
	 [ -t 0 ] && {
         local filename="$1"
         shift
         [ "$filename" ] && {
             curl $opts -F f:1=@"$filename" $* ix.io/$id
             return
         }
         echo "^C to cancel, ^D to send."
     }
     curl $opts -F f:1='<-' $* ix.io/$id
}

setopt prompt_subst
autoload -U compinit && compinit
# Exports
export EDITOR="nvim"
export VIRTUAL_ENV_DISABLE_PROMPT=
export SSH_KEY_PATH="~/.ssh/id_rsa"
export PATH=$PATH:$HOME/bin:$HOME/TeamSpeak/:$HOME/.local/bin:$HOME/.cargo/bin
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export GOPATH="$HOME/Projects/go"
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/usr/share/gems

# Aliases
alias songdownload="youtube-dl -f bestaudio --extract-audio --audio-format mp3 --audio-quality 0"
alias grep="grep --color=auto --exclude-dir={.cvs,.git,.vcs,.hs}"
alias cd..="cd .."
alias reload="source ~/.zshrc"
alias ls="ls -la --color=always"
alias tmux="tmux -2"
alias listup="apt list --upgradable"
alias vim="nvim"
