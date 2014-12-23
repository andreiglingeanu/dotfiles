# ENVIRONMENT
if [ -d "$HOME/bin" ] ; then
  PATH="$PATH:$HOME/bin"
fi

# include rbenv path
if [ -d "$HOME/.rbenv/bin" ] ; then
  PATH="$HOME/.rbenv/bin:$PATH"
fi

if [ -n "$TMUX" ]; then
  eval "$(rbenv init -)"
fi

export LANG=ru_RU.UTF-8
export PATH=$PATH:/Applications/Racket\ v6.1/bin
