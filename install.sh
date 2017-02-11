#!/bin/bash -eu
echo "Installing Xcode Command Line Tools..."
xcode-select --install

# Install homebrew
echo "Installing Homebrew..."
curl -fsSL -o /tmp/brew-install https://raw.githubusercontent.com/Homebrew/install/master/install
/usr/bin/ruby /tmp/brew-install
brew doctor
brew update

brew tap homebrew/bundle
brew bundle

echo "Setting Fish as Defualt Shell..."
echo $(which fish) | sudo tee -a /etc/shells
chsh -s $(which fish)

git config --global core.pager "diff-so-fancy | less --tabs=4 -RFX"

