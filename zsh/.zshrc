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
export BROWSER=firefox


# Theme messes up if you reload, so i added this safe break
antigen theme alexvasiluta/nreese
#antigen theme raindeer44/vero

#export IXURL=http://localhost:3000/
# export IXURL=https://wiki.vasiluta.ro
export IXURL=http://ix.io/

antigen apply

ix() {
    local opts
    local OPTIND
    [ -f "$HOME/.netrc" ] && opts='-n'
    while getopts ":hd:i:n:" x; do
        case $x in
            h) echo "ix [-d ID] [-i ID] [-n N] [opts]"; return;;
            i) opts="$opts -X PUT"; local id="$OPTARG";;
            n) opts="$opts -F read:1=$OPTARG";;
        esac
    done
	shift $(($OPTIND - 1))
	[ -t 0 ] && {
        local filename="$1"
		echo "Uploading $filename"
		shift
        [ "$filename" ] && {
           #  curl $opts -F f:1=@"$filename" $* ix.io/$id
			curl $opts -F f:1=@"$filename" $* "$IXURL"
#            curl $opts -F f:1=@"$filename" $* https://wiki.siluta.ro/
            return
        }
        echo "^C to cancel, ^D to send."
    }
	curl $opts -F f:1='<-' $* "$IXURL"
}

setopt prompt_subst
autoload -U compinit && compinit
# Exports
export EDITOR="nvim"
export VIRTUAL_ENV_DISABLE_PROMPT=
export SSH_KEY_PATH="~/.ssh/id_rsa"

export PATH="$PYENV_ROOT/bin:$PATH"
# gopath
export GOPATH="$HOME/Projects/go"
# Normal PATH
export PATH=$PATH:$HOME/bin
# for local binaries and for rust cargos
export PATH=$PATH:$HOME/.local/bin:$HOME/.cargo/bin
# for yarn
export PATH="$PATH:$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin"
# for go executables
export PATH=$PATH:$GOPATH/bin
# for ruby gems
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
unset SSH_ASKPASS
