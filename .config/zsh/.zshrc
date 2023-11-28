export HISTFILE=${HOME}/.zsh_history
export HISTSIZE=1000
export SAVEHIST=100000
setopt hist_ignore_dups
setopt EXTENDED_HISTORY

alias cr='cd "$(ghq root)/$(ghq list | peco)"'
alias ls='ls -alFG'
alias g='git'
alias tf='terraform'
alias unix-time="date +%s"

# https://github.com/starship/starship
export STARSHIP_CONFIG=~/dotfiles/.config/starship.toml
eval "$(starship init zsh)"

autoload -U compinit
compinit
fpath+=~/.zfunc

# asdf
. /opt/homebrew/opt/asdf/libexec/asdf.sh

# aws-cli
autoload bashcompinit && bashcompinit
autoload -Uz compinit && compinit
complete -C '/usr/local/bin/aws_completer' aws
