fpath=( "$HOME/.zfunctions" $fpath)
autoload -U promptinit && promptinit
prompt pure

fpath=("$HOME/.zsh/completions" $fpath)
autoload -U compinit && compinit

# Alias hub as git
eval "$(hub alias -s)"
