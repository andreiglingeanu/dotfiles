# include rbenv path
if [ -d "$HOME/.rbenv/bin" ] ; then
  PATH="$HOME/.rbenv/bin:$PATH"
fi

if [ -n "$TMUX" ]; then
  eval "$(rbenv init -)"
fi

