#!/usr/bin/env bash

# https://vaneyckt.io/posts/safer_bash_scripts_with_set_euxo_pipefail/
set -euo pipefail

echo "Symlinkin dotfiles stuffs 4 u..."

for file in .*; do
  if [[ $file == "." || $file == ".." ]]; then
    continue
  fi
  echo "Running ~/$file"

  # symlink might alraedy exist
  unlink ~/$file > /dev/null 2>&1

  # create the link
  ln -s ~/dotfiles/$file ~/$file
done

echo "Yayyy! Everything looking groovy."
