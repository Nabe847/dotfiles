alias cr='cd "$(ghq root)/$(ghq list | peco)"'
alias ls='ls -alFG'
alias g='git'

# https://github.com/starship/starship
export STARSHIP_CONFIG=~/dotfiles/.config/starship.toml
eval "$(starship init zsh)"

autoload -U compinit
compinit
fpath+=~/.zfunc

