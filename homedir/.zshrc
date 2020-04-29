ZSH_DISABLE_COMPFIX=true
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$HOME/.local/bin:$PYENV_ROOT/shims:$PATH"

# Path to your oh-my-zsh installation.
export ZSH=/Users/brookeangel/.oh-my-zsh

ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh
source /usr/local/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh

export VISUAL=vim
export EDITOR="$VISUAL"

alias sane='stty sane'
alias ip="ipconfig getifaddr en0"
alias gco="git checkout"
alias gst="git status"
alias "ggpush -f"="ggpush --force-with-lease"
