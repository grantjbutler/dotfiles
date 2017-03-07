set -x PATH (brew --prefix homebrew/php/php71)/bin $HOME/.composer/vendor/bin $PATH
set -x EDITOR vim
set -x fish_function_path $fish_function_path ~/.dotfiles/fish/functions

status --is-interactive; and source (rbenv init -|psub)

