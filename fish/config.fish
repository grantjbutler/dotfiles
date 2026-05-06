if test -e /opt/homebrew/bin/brew
  eval (/opt/homebrew/bin/brew shellenv)
end

fish_add_path "$HOME/.dotfiles/bin"

set -x EDITOR vim
set -x fish_function_path ~/.dotfiles/fish/functions $fish_function_path
set -x COMPOSER_MEMORY_LIMIT -1

alias cat="bat --style=numbers"

fish_add_path (yarn global bin)
fish_add_path "$HOME/.composer/vendor/bin"
