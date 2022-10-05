#!/bin/bash -eu

echo "Installing Xcode..."

xcode-select --install

if [[ $(uname -p) == "arm" ]]; then
  echo "Installing Rosetta 2..."
  softwareupdate --install-rosetta --agree-to-license
fi

./setup/brew
./setup/fish
./setup/git
./setup/vim
./setup/php
./setup/node
./setup/vscode
./setup/xcode
./setup/macos

# Since, for the first time, we're likely to have cloned over HTTPS, update the URL for the repo to the SSH URL.
git remote set-url origin git@github.com:grantjbutler/dotfiles.git
