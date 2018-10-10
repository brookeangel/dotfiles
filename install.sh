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

echo "Yayyy! Everything looking groovy."
