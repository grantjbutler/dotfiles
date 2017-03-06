set -x PATH (brew --prefix homebrew/php/php71)/bin $HOME/.composer/vendor/bin $PATH
set -x EDITOR vim

status --is-interactive; and source (rbenv init -|psub)

