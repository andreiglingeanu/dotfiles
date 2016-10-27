# ENVIRONMENT
if [ -d "$HOME/bin" ] ; then
  PATH="$PATH:$HOME/bin"
fi

if [ -d "$HOME/Dropbox/bin" ] ; then
  PATH="$PATH:$HOME/Dropbox/bin"
fi

if [ -d "$HOME/Dropbox/bin/wp-cli/bin" ] ; then
  PATH="$PATH:$HOME/Dropbox/bin/wp-cli/bin"
fi

if [ -d "$HOME/.node/bin" ] ; then
  PATH="$PATH:$HOME/.node/bin"
fi

# include rbenv path
if [ -d "$HOME/.rbenv/bin" ] ; then
  PATH="$HOME/.rbenv/bin:$PATH"
fi

if [ -f "$HOME/secrets.sh" ] ; then
  source $HOME/secrets.sh
fi

if [ -n "$TMUX" ]; then
  eval "$(rbenv init -)"
fi

if [ -d "$HOME/Dropbox/Projects/full/wp" ]; then
  export WP_DEVELOP_DIR="$HOME/Dropbox/Projects/full/wp/"
fi
export WP_DEVELOP_THEME_NAME="ct"

export LANG=ru_RU.UTF-8
export PATH=$PATH:/Applications/Racket\ v6.1/bin

source $(brew --prefix php-version)/php-version.sh && php-version 5

export GITHUB_TOKEN=4d3847a58be91cae701e26c6c36015f430f07c5d
