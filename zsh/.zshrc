EDITOR=emacs
fpath=( "$HOME/.zsh/pure" $fpath)
autoload -U promptinit && promptinit
prompt pure

fpath=("$HOME/.zsh/completions" $fpath)
autoload -U compinit && compinit

autoload -U edit-command-line
zle -N edit-command-line
bindkey '^xe' edit-command-line
bindkey '^x^e' edit-command-line

OPENSSL_DIR="/usr/local/opt/openssl"
