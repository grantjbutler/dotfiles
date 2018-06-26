#!/bin/bash -eu

echo "Installing Xcode..."

install_dir=`mktemp -d`
pushd $install_dir
curl -sL -O https://github.com/neonichu/ruby-domain_name/releases/download/v0.5.99999999/domain_name-0.5.99999999.gem
gem install domain_name-0.5.99999999.gem
gem install --conservative xcode-install
rm -f domain_name-0.5.99999999.gem
popd

read -s -p "Apple ID:" XCODE_INSTALL_USER
echo ""
read -s -p "Apple ID Password:" XCODE_INSTALL_PASSWORD
echo ""

xcversion install 9.4.1
xcversion install-cli-tools

unset XCODE_INSTALL_USER
unset XCODE_INSTALL_PASSWORD

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

