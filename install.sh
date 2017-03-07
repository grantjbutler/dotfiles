#!/bin/bash -eu

echo "Installing Xcode Command Line Tools..."
xcode-select --install

./setup/brew
./setup/fish
./setup/git
./setup/vim
./setup/dnsmasq
./setup/php
./setup/ruby
./setup/mysql
./setup/vscode
./setup/xcode
./setup/macos

