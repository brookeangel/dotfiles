# If you come from bash you might have to change your $PATH.
ZSH_DISABLE_COMPFIX=true
export PATH=$HOME/.local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/brookeangel/.oh-my-zsh

ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh

export VISUAL=vim
export EDITOR="$VISUAL"

alias sane='stty sane'
alias ip="ipconfig getifaddr en0"
alias gco="git checkout"
alias "ggpush -f"="ggpush --force-with-lease"
