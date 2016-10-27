# setopt XTRACE VERBOSE

ZSHA_BASE=$HOME/zsh-antigen
autoload -U zmv

source $ZSHA_BASE/zsh/env.sh
source $ZSHA_BASE/antigen/antigen.zsh
source $ZSHA_BASE/zsh/config.sh

antigen-use oh-my-zsh
antigen-bundles <<EOBUNDLES
  git
  bundler
  tmux
  wp-cli
EOBUNDLES

antigen-bundle zsh-users/zsh-syntax-highlighting
antigen-bundle zsh-users/zsh-history-substring-search
antigen-bundle $ZSHA_BASE/bundles/git-completion
# antigen-bundle felixr/docker-zsh-completion
# antigen-bundle vi-mode
# antigen-bundle vagrant
# antigen-bundle denysdovhan/spaceship-zsh-theme
# antigen theme https://github.com/denysdovhan/spaceship-zsh-theme spaceship


antigen-theme kolo

antigen-apply

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

if [ -d $HOME/.phpbrew ]; then
	source $HOME/.phpbrew/bashrc
fi

alias pretty='pygmentize -g -O encoding=utf-8'

source $ZSHA_BASE/zsh/aliases.sh
if [ -f $HOME/Dropbox/bin/login_aliases.sh ]; then
  source $HOME/Dropbox/bin/login_aliases.sh
fi

if [ -f $HOME/Dropbox/bin/server_aliases.sh ]; then
  source $HOME/Dropbox/bin/server_aliases.sh
fi

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

if [ -f ~/.bin/tmuxinator.zsh ]; then
    source ~/.bin/tmuxinator.zsh
fi

if [ -f $ZSHA_BASE/todo_completion ]; then
    source $ZSHA_BASE/todo_completion
fi

export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.4/bin

export PATH="/usr/local/sbin:$PATH"

export PATH="/opt/chefdk/bin:$PATH"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export NVM_DIR="$HOME/.nvm"
. "$(brew --prefix nvm)/nvm.sh"
# export PATH="${PATH}:${NVM_DIR}/versions/node/${NODE_VERSION}/bin"

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export WP_TESTS_DIR=/tmp/wordpress-tests-lib/
