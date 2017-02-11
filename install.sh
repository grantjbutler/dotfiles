#!/bin/bash -eu
echo "Installing Xcode Command Line Tools..."
xcode-select --install

# Install homebrew
echo "Installing Homebrew..."
curl -fsSL -o /tmp/brew-install https://raw.githubusercontent.com/Homebrew/install/master/install
/usr/bin/ruby /tmp/brew-install
brew doctor

# Install fish
echo "Installing Fish..."
brew install fish

echo "Setting Fish as Defualt Shell..."
echo "/usr/local/bin/fish" | sudo tee -a /etc/shells
chsh -s /usr/local/bin/fish

# Install Diff So Fancy
echo "Installing Diff So Fancy..."
brew install diff-so-fancy
git config --global core.pager "diff-so-fancy | less --tabs=4 -RFX"

# Install git-lfs
echo "Installing git-lfs..."
brew install git-lfs

# Install carthage
echo "Installing carthage..."
brew install carthage

# Install wget
echo "Installing wget..."
brew install wget

# Install cask
echo "Installing cask..."
brew tap caskroom/cask

# Install mas
echo "Installing mas..."
brew install mas

# Install apps
apps=(1password alfred bartender coderunner couleurs dash dropbox fluid github-desktop hex-fiend istat-menus iterm2 paw sketch slack spotify the-hit-list visual-studio-code zeplin)

echo "The following apps will be installed:"
for app in ${apps[@]}; do
  echo "- ${app}"
done

echo "Verify the above apps before installing by visiting https://github.com/caskroom/homebrew-cask/blob/master/Casks/<app>.rb to verify."
read -p "Press [Enter] to install the above apps."

for app in ${apps[@]}; do
  brew cask install $app
done

# App Store Apps
#                  Fantastical 2    Keynote      Numbers     Pages      Tweetbot    xScope
app_store_app_ids=("975937182"      "409183694" "409203825" "409201541" "557168941" "889428659")
echo "Installing apps from the app store"
for app_id in ${app_store_app_ids[@]}; do
  mas install ${app_id}
done
