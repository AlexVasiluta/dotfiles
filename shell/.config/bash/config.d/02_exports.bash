# Exports

# export IXURL=http://ix.io/
export LESSCHARSET=utf-8
export IXURL=https://cdn.kilonova.ro/
export EDITOR="nvim"
export SSH_KEY_PATH="~/.ssh/id_rsa"

export PAGER=less

# normal path stuff
export PATH=$PATH:/usr/sbin:/usr/local/bin

# local bin path 
export PATH=$PATH:$HOME/.local/bin

# gopath
export GOPATH="$HOME/gostuff"

export PATH="$PATH:$HOME/.cargo/bin"

# for go executables
export PATH="$PATH:$GOPATH/bin"
# for go installation (must be put at start of path)
export PATH="$HOME/src/go/bin:$PATH"

# for ruby gems
export PATH="$PATH:/usr/share/gems"

# for plan9
export PLAN9=/usr/local/plan9
export PATH="$PATH:$PLAN9/bin"

# for rust
export CARGO_NET_GIT_FETCH_WITH_CLI=true

# for deno
export DENO_INSTALL="/home/alexv/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"


# ~/ Cleanup
export PYLINTHOME="$XDG_CACHE_HOME/pylint"
export RUSTUP_HOME="$XDG_DATA_HOME/rustup"
export LESSHISTFILE=-
export GTK_RC_FILES="$XDG_CONFIG_HOME/gtk-1.0/gtkrc"
export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtk-2.0/gtkrc"
