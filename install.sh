#!/bin/bash -eu

echo "Installing Xcode..."

xcode-select --install

gem install xcode-install

xcversion install 13.1

./setup/brew
./setup/fish
./setup/git
./setup/vim
./setup/dnsmasq
./setup/php
./setup/node
./setup/vscode
./setup/xcode
./setup/macos

# Since, for the first time, we're likely to have cloned over HTTPS, update the URL for the repo to the SSH URL.
git remote set-url origin git@github.com:grantjbutler/dotfiles.git
