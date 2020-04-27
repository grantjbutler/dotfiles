set -x PATH ~/.dotfiles/bin (brew --prefix php)/bin $HOME/.composer/vendor/bin $PATH
set -x EDITOR vim
set -x fish_function_path ~/.dotfiles/fish/functions $fish_function_path

alias git=hub
alias cat=bat

status --is-interactive; and source (rbenv init -|psub)

