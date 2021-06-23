set -x PATH ~/.dotfiles/bin (brew --prefix php@7.2)/bin $HOME/.composer/vendor/bin $PATH
set -x EDITOR vim
set -x fish_function_path ~/.dotfiles/fish/functions $fish_function_path
set -x COMPOSER_MEMORY_LIMIT -1

alias cat=bat

status --is-interactive; and source (rbenv init -|psub)
