EDITOR=emacs
fpath=( "$HOME/.zfunctions" $fpath)
autoload -U promptinit && promptinit
prompt pure

setopt no_global_rcs

fpath=("$HOME/.zsh/completions" $fpath)
autoload -U compinit && compinit

autoload -U edit-command-line
zle -N edit-command-line
bindkey '^xe' edit-command-line
bindkey '^x^e' edit-command-line

# Alias hub as git
eval "$(hub alias -s)"
