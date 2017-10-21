EDITOR=emacs
fpath=( "$HOME/.zfunctions" $fpath)
autoload -U promptinit && promptinit
prompt pure

fpath=("$HOME/.zsh/completions" $fpath)
autoload -U compinit && compinit

autoload -U edit-command-line
zle -N edit-command-line
bindkey '^xe' edit-command-line
bindkey '^x^e' edit-command-line

# Alias hub as git
eval "$(hub alias -s)"

# OPAM configuration
. /Users/dix/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

# RBENV init
eval "$(rbenv init -)"

PATH="$HOME/.cargo/bin:$PATH"
OPENSSL_DIR="/usr/local/opt/openssl"

which gimme > /dev/null && eval "$(gimme 1.9.1)" 2>/dev/null
export GOPATH=~/go
export PATH="${GOPATH}/bin:${PATH}"
