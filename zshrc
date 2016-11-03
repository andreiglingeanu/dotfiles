# setopt XTRACE VERBOSE

ZSHA_BASE=$HOME/zsh-antigen

autoload -U zmv

source $ZSHA_BASE/zsh/env.sh
source $ZSHA_BASE/zsh/config.sh
source $ZSHA_BASE/zsh/theme.zsh

source <(antibody init)

# antigen-use oh-my-zsh
antibody bundle zsh-users/zsh-syntax-highlighting
antibody bundle zsh-users/zsh-history-substring-search
# antibody bundle $ZSHA_BASE/bundles/git-completion

# antigen-bundle felixr/docker-zsh-completion
# antigen-bundle vi-mode
# antigen-bundle vagrant
# antigen-bundle denysdovhan/spaceship-zsh-theme
# antigen theme https://github.com/denysdovhan/spaceship-zsh-theme spaceship
# antigen-theme kolo

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

lazy_load() {
    # Act as a stub to another shell function/command. When first run, it will load the actual function/command then execute it.
    # E.g. This made my zsh load 0.8 seconds faster by loading `nvm` when "nvm", "npm" or "node" is used for the first time
    # $1: space separated list of alias to release after the first load
    # $2: file to source
    # $3: name of the command to run after it's loaded
    # $4+: argv to be passed to $3
    echo "Lazy loading $1 ..."

    # $1.split(' ') using the s flag. In bash, this can be simply ($1) #http://unix.stackexchange.com/questions/28854/list-elements-with-spaces-in-zsh
    # Single line won't work: local names=("${(@s: :)${1}}"). Due to http://stackoverflow.com/questions/14917501/local-arrays-in-zsh   (zsh 5.0.8 (x86_64-apple-darwin15.0))
    local -a names
    if [[ -n "$ZSH_VERSION" ]]; then
        names=("${(@s: :)${1}}")
    else
        names=($1)
    fi
    unalias "${names[@]}"
    . $2
    shift 2
    $*
}

group_lazy_load() {
    local script
    script=$1
    shift 1
    for cmd in "$@"; do
        alias $cmd="lazy_load \"$*\" $script $cmd"
    done
}

export NVM_DIR=~/.nvm
group_lazy_load $HOME/.nvm/nvm.sh nvm node npm gulp

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export WP_TESTS_DIR=/tmp/wordpress-tests-lib/

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
