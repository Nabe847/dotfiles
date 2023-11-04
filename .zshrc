alias cr='cd "$(ghq root)/$(ghq list | peco)"'
alias ls='ls -alFG'
alias g='git'

# https://github.com/starship/starship
eval "$(starship init zsh)"

autoload -U compinit
compinit
fpath+=~/.zfunc
