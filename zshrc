ZSHA_BASE=$HOME/zsh-antigen
source $ZSHA_BASE/antigen/antigen.zsh
source $ZSHA_BASE/zsh/config.sh

antigen-use oh-my-zsh
antigen-bundles <<EOBUNDLES
  git
  bundler
  tmux
EOBUNDLES

antigen-bundle zsh-users/zsh-syntax-highlighting
antigen-bundle zsh-users/zsh-history-substring-search
antigen-bundle $ZSHA_BASE/bundles/git-completion

antigen-theme kolo

antigen-apply

export CDPATH=$CDPATH:$HOME/Sites:$HOME
export PATH=$HOME/.rbenv/bin:$HOME/bin:/opt/homebrew/bin:$HOME/.composer/vendor/bin:/usr/local/mysql/bin:$PATH
export VMWWW=/Volumes/www/html
export VMPHP=/Volumes/www/phpapps
export EDITOR=vim

if [ -d $HOME/.phpbrew ]; then
	source $HOME/.phpbrew/bashrc
fi

alias pretty='pygmentize -g -O encoding=utf-8'

source $ZSHA_BASE/zsh/aliases.sh
source $ZSHA_BASE/zsh/env.sh
