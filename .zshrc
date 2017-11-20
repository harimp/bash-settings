ZSH_THEME="3den"

export TERM="xterm-256color"

setopt interactivecomments

export EDITOR="vim"
export USE_EDITOR=$EDITOR
export VISUAL=$EDITOR

PIP_PKG="/usr/local/lib/python2.7/dist-packages"
. $PIP_PKG/powerline/bindings/zsh/powerline.zsh

# Configs
alias python='python3'

# Aliases
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

alias ev='vim ~/.vimrc'
alias et='vim ~/.tmux.conf'
alias ez='vim ~/.zshrc'
alias sv='source ~/.vimrc'

alias src='source ~/.zshrc'

alias ls='ls --color'
alias ll='ls -la'

