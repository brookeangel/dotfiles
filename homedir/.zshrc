# If you come from bash you might have to change your $PATH.
# TODO: Use something > Ruby 2.3.0, or just nix it all
export PATH=$HOME/.local/bin:$PATH:$HOME/.gem/ruby/2.3.0/bin

export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"

# Path to your oh-my-zsh installation.
export ZSH=/Users/brookeangel/.oh-my-zsh

ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh

export VISUAL=vim
export EDITOR="$VISUAL"

# bindkey -me
eval "$(direnv hook zsh)"

alias sane='stty sane'
alias ip="ipconfig getifaddr en0"
alias gco="git checkout"
alias "ggpush -f"="ggpush --force-with-lease"
alias actsudo="aws-vault exec sudo --"
# Get nix first: https://nixos.org/nix/
source ~/.nix-profile/etc/profile.d/nix.sh
