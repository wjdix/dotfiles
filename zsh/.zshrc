EDITOR=emacs
fpath=( "$HOME/.zsh/pure" $fpath)
autoload -U promptinit && promptinit
prompt pure

if type brew &>/dev/null; then
    fpath=($(brew --prefix)/share/zsh/site-functions $fpath)
    . $(brew --prefix asdf)/asdf.sh
fi

fpath=("$HOME/.zsh/completions" $fpath)
autoload -U compinit && compinit

autoload -U edit-command-line
zle -N edit-command-line
bindkey '^xe' edit-command-line
bindkey '^x^e' edit-command-line

OPENSSL_DIR="/usr/local/opt/openssl"

zstyle :prompt:pure:git:stash show yes

ASDF_SH="~/.asdf/asdf.sh"

if [ -f "$ASDF_SH" ]; then
    . $ASDF_SH
fi
