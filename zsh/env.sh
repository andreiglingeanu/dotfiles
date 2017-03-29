# ENVIRONMENT
if [ -d "$HOME/bin" ] ; then
  PATH="$PATH:$HOME/bin"
fi

if [ -d "$HOME/.linuxbrew/bin" ] ; then
  PATH="$PATH:$HOME/.linuxbrew/bin"
fi

if [ -d "$HOME/.linuxbrew/share/man" ] ; then
  export MANPATH="$HOME/.linuxbrew/share/man:$MANPATH"
fi

if [ -d "$HOME/.linuxbrew/share/info" ] ; then
  export INFOPATH="$HOME/.linuxbrew/share/info:$INFOPATH"
fi

if [ -d "$HOME/Dropbox/bin" ] ; then
  PATH="$PATH:$HOME/Dropbox/bin"
fi

if [ -d "$HOME/Dropbox/bin/wp-cli/bin" ] ; then
  PATH="$PATH:$HOME/Dropbox/bin/wp-cli/bin"
fi

if [ -d "$HOME/Dropbox/Projects/full/wp" ]; then
  export WP_DEVELOP_DIR="$HOME/Dropbox/Projects/full/wp/"
fi

# export WP_DEVELOP_THEME_NAME="ct"

export WP_TESTS_DIR=/tmp/wordpress-tests-lib/


export LANG=ru_RU.UTF-8

export CDPATH=$CDPATH:$HOME/Sites:$HOME
export PATH=$HOME/bin:/opt/homebrew/bin:$HOME/.composer/vendor/bin:/usr/local/mysql/bin:$PATH
export VMWWW=/Volumes/www/html
export VMPHP=/Volumes/www/phpapps
export EDITOR=vim
export ANDROID_HOME=~/Development/sdk
export PATH=$PATH:~/Development/sdk/platform-tools:~/Development/sdk/tools
export PATH=$PATH:/usr/local/smlnj/bin

export GOPATH=$HOME/Go
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin
