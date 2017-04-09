# Utility
alias reload='source ~/.zshrc'
alias ea="v $ZSHA_BASE/zsh/aliases.sh && reload" # Edit aliases
alias edit_secrets="vim ~/Dropbox/bin/login_aliases.sh && reload"

alias ec="v $ZSHA_BASE/zsh/config.sh && reload" # Edit config
alias ev="v $ZSHA_BASE/zsh/env.sh && reload" # Edit environment specific vars
alias ee="v $ZSHA_BASE/zshrc && reload" # Edit zshrc
alias trr='trs {=ru}'
alias k='kill -9 %${1-1}'
alias to='touch'
alias info='info --vi-keys'
alias vg='vagrant'

alias generate_secure_password='openssl passwd -1 "plaintextpassword"'
alias generate_tags='ag -l | ctags --links=no -L-'

alias wk="cd /Users/andreiglingeanu/Projects/full && clear && echo 'do your work, motherfucker'"


alias ls="ls -G"

alias editini="vim /usr/local/etc/php/5.6/php.ini"
alias mamp="cd /Applications/MAMP/htdocs/"

# copy & paste utilities
alias copy='xclip -selection clipboard'
alias paste='xclip -selection clipboard -o'

function take () {
	mkdir $1
	cd $1
}

# WordPress
alias wp-cd='cd $(wp-path)'
alias wp-content='cd "$(wp-path)/wp-content"'
alias wp-unyson='cd /Users/andreiglingeanu/Projects/full/unyson'

# Common
alias gclo='git clone'
alias gpl='git pull --rebase'
alias c='clear'
alias cdd='cd -' # goto last dir cd'ed from
alias h='history'
alias s='cd ..'

alias vic='vim -u NONE -N'

function zipr() {
  zip -r $1.zip $1
}

function extract {
  echo Extracting $1 ...
  if [ -f $1 ] ; then
      case $1 in
          *.tar.bz2)   tar xjf $1  ;;
          *.tar.gz)    tar xzf $1  ;;
          *.bz2)       bunzip2 $1  ;;
          *.rar)       unrar x $1    ;;
          *.gz)        gunzip $1   ;;
          *.tar)       tar xf $1   ;;
          *.tbz2)      tar xjf $1  ;;
          *.tgz)       tar xzf $1  ;;
          *.zip)       unzip $1   ;;
          *.Z)         uncompress $1  ;;
          *.7z)        7z x $1  ;;
          *)        echo "'$1' cannot be extracted via extract()" ;;
      esac
  else
      echo "'$1' is not a valid file"
  fi
}

alias grep='grep --colour=auto'
alias rf='rm -rf $*'


# Git
alias ungit="find . -name '.git' -exec rm -rf {} \;"
function gac() {
  git commit -v -a -m "$*"
}

alias g='git status'
alias gst='git status'
alias gt='git status'
alias glogg='git log --graph --decorate --oneline --abbrev-commit --all'
alias groot='cd $(git rev-parse --show-cdup)'
alias gmf='git merge --no-ff'

# Finder
# alias o='gnome-open'
# alias open='gnome-open'

# python
alias py='python3'

# tmux
alias t='tmux -2 new -s $(basename $(pwd))'

# mysql
alias mysqlroot='mysql -u root -p'

function mysqldb() {
  mysql -u root -p -e "CREATE DATABASE $1 CHARACTER SET utf8 COLLATE utf8_bin;"
}

# Editor
alias e='vim'

# alias vim='/usr/local/bin/vim' # switch vim to the brew's one
alias v='vim'

# Apache
alias apar='sudo /etc/init.d/apache2 restart'
alias apastop='sudo /etc/init.d/apache2 stop'
alias apastart='sudo /etc/init.d/apache2 start'
alias apaconf='sudo vim /etc/apache2/apache2.conf'
alias phpconf='sudo vim /etc/php5/apache2/php.ini'
alias apacurdir='sudo mount -t afp  . /Library/WebServer/Documents'
alias apacurdirstop='sudo umount /var/www/html'

# MAMP
# alias mamp_start="/Applications/MAMP/bin/startApache.sh"
# alias mamp_stop="/Applications/MAMP/bin/stopApache.sh"

# GDB
alias gdb='gdb -quiet'

# rails
alias rails_migrate="rake db:migrate db:rollback && rake db:migrate"

# Use vim cli mode
bindkey '^P' up-history
bindkey '^N' down-history

# backspace and ^h working even after
# returning from command mode
bindkey '^?' backward-delete-char
bindkey '^h' backward-delete-char

# ctrl-w removed word backwards
bindkey '^w' backward-kill-word

# ctrl-r starts searching history backward
bindkey '^r' history-incremental-search-backward

# disable -a sl

# WORK HARD
alias work='sudo getshitdone work'
alias play='sudo getshitdone play'

# Open Source
alias os='cd ~/Projects/open_source && echo "Start contributing, nigga."'

##########
#  tmux  #
##########
alias ta='tmux attach -t'

###################
#  brew services  #
###################
alias bss='brew services start $@'
alias bst='brew services stop $@'
alias bsl='brew services list'

