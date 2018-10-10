#!/usr/bin/env bash

# This script automates a few bits of setup!
# It would like to automate more, but no time for that now!

# https://vaneyckt.io/posts/safer_bash_scripts_with_set_euxo_pipefail/
set -euo pipefail

# Symlink the dotfiles
echo "Symlinkin dotfiles stuffs 4 u..."

cd homedir

for file in .*; do
  if[[ $file == "." || $file == ".." ]]; then
    continue
  fi
  echo "Running ~/$file"

  # symlink might already exist
  unlink ~/$file > /dev/null 2>&1

  # create the link
  ln -s ~/dotfiles/homedir/$file ~/$file
done

cd ..

# Configure Brangelina
echo "Configuring vim with celebrity powerhouse couple brangelina..."

# TODO: Add VimPlug installation here

BRANGELINA_CONFIG=~/dotfiles/brangelina/init.example.vim
VIM_CONFIG=~/init.vim
echo "Linking $BRANGELINA_CONFIG to $VIM_CONFIG..."

# symlink might alraedy exist
unlink ~/$VIM_CONFIG > /dev/null 2>&1
ln -s BRANGELINA_CONFIG $VIM_CONFIG

echo "Yayyy! Everything looking groovy."
