fish_add_path ~/.dotfiles/bin
fish_add_path /usr/local/bin
fish_add_path /usr/local/sbin

set -x EDITOR vim
set -x fish_function_path ~/.dotfiles/fish/functions $fish_function_path
set -x COMPOSER_MEMORY_LIMIT -1

alias cat=bat

status --is-interactive; and source (rbenv init -|psub)
