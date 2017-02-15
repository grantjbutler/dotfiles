#!/bin/bash -eu

echo "Installing Xcode Command Line Tools..."
xcode-select --install

./setup/brew
./setup/fish
./setup/git
./setup/php
./setup/macos
