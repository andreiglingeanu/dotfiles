if [ -d "$HOME/bin" ] ; then
  PATH="$PATH:$HOME/bin"
fi

if [ -d "$ZSHA_BASE/scripts" ] ; then
  PATH="$PATH:$ZSHA_BASE/scripts"
fi

if [ -d "/usr/local/bin" ] ; then
  PATH="$PATH:/usr/local/bin"
fi

if [ -d "$HOME/Dropbox/bin" ] ; then
  PATH="$PATH:$HOME/Dropbox/bin"
fi

if [ -d "$HOME/Dropbox/bin/wp-cli/bin" ] ; then
  PATH="$PATH:$HOME/Dropbox/bin/wp-cli/bin"
fi

if [ -d "$HOME/Projects/full/wp" ]; then
  export WP_DEVELOP_DIR="$HOME/Projects/full/wp/"
fi

export PATH=/opt/local/bin:/opt/local/sbin:$PATH

export CDPATH=$CDPATH:$HOME/Sites:$HOME
export PATH=$HOME/bin:/opt/homebrew/bin:$HOME/.composer/vendor/bin:/usr/local/mysql/bin:$PATH
export VMWWW=/Volumes/www/html
export VMPHP=/Volumes/www/phpapps
export EDITOR=nvim

export GOPATH=$HOME/Go
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin
export PATH="/usr/local/opt/gettext/bin:$PATH"
export GPG_TTY=$(tty)

export NVIM_TUI_ENABLE_TRUE_COLOR=1

export PHP_VERSIONS="/usr/local/"

