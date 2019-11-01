# Dotfiles

Stuff Brooke typically needs when setting up her environment.

## Setup checklist:
- [ ] Generate public keys and upload to Github
- [ ] Install command line tools: `xcode-select --install`
- [ ] Clone this repo
- [ ] Get the submodules:
  ```
  git submodule init
  git submodule update
  ```
- [ ] Get homebrew: `/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" (See: https://brew.sh)
- [ ] Dump bundle to install commonly used programs: `brew bundle dump`
`
- [ ] Get omzsh: `sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
` 
- [ ] Update keyboard settings
- [ ] Install dotfiles: `./install.sh`
- [ ] Install VimPlug: https://github.com/junegunn/vim-plug#installation
- [ ] Install nix: https://nixos.org/nix/
- [ ] Install elm things: `npm install -g elm elm-test elm-format @elm-tooling/elm-language-server` - consider moving this to nix?
