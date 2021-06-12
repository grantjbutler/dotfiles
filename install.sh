#!/bin/bash -eu

echo "Installing Xcode..."

xcode-select --install

gem install xcode-install

xcversion install 12.4

./setup/brew
./setup/fish
./setup/git
./setup/vim
./setup/dnsmasq
./setup/php
./setup/ruby
./setup/node
./setup/vscode
./setup/xcode
./setup/macos
