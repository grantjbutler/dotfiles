if test -e /opt/homebrew/bin/brew
  eval /opt/homebrew/bin/brew shellenv
end

fish_add_path ~/.dotfiles/bin
fish_add_path /usr/local/bin
fish_add_path /usr/local/sbin

set -x EDITOR vim
set -x fish_function_path ~/.dotfiles/fish/functions $fish_function_path
set -x COMPOSER_MEMORY_LIMIT -1

alias cat=bat

if test -e /opt/homebrew/opt/asdf/asdf.fish
  source /opt/homebrew/opt/asdf/asdf.fish
else if test -e /usr/local/opt/asdf/libexec/asdf.fish
  source /usr/local/opt/asdf/libexec/asdf.fish
end

fish_add_path (yarn global bin)
