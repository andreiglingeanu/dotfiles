# Utility
alias reload='source ~/.zshrc'
alias ea='vim ~/zsh-antigen/zsh/aliases.sh && reload' # Edit aliases
alias ec='vim ~/zsh-antigen/zsh/config.sh && reload' # Edit config
alias ee='vim ~/zsh-antigen/zshrc && reload' # Edit zshrc
alias trr='trs {=ru}'
alias k='kill -9 %${1-1}'
alias to='touch'
alias info='info --vi-keys'

# copy & paste utilities
alias copy='xclip -selection clipboard'
alias paste='xclip -selection clipboard -o'

# Common
alias gclo='git clone'
alias c='clear'
alias cdd='cd -' # goto last dir cd'ed from
alias h='history'
alias s='cd ..'
alias e='exit'
alias vic='vim -u NONE -N'
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
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

# Finder
alias o='gnome-open'
alias open='gnome-open'
alias lh='gnome-open http://localhost'

# python
alias py='python3'

# ruby
alias r='rails'

# ruby gems
alias gemi='gem install'

# tmux
alias tmux='tmux -2'

# mysql
alias mysqlroot='mysql -u root -p'

function mysqldb() {
  mysql -u root -p -e "CREATE DATABASE $1 CHARACTER SET utf8 COLLATE utf8_bin;"
}


# dropbox
alias puburl='dropbox puburl'


# Editor
alias e='vim'
alias v='vim'
alias vf='vim `fzf -m`' # https://github.com/junegunn/fzf
alias gvim="gvim --remote-tab-silent"

# Apache
alias apar='sudo /etc/init.d/apache2 restart'
alias apastop='sudo /etc/init.d/apache2 stop'
alias apastart='sudo /etc/init.d/apache2 start'
alias apaconf='sudo vim /etc/apache2/apache2.conf'
alias phpconf='sudo vim /etc/php5/apache2/php.ini'
alias apacurdir='sudo mount -o bind . /var/www/html'
alias apacurdirstop='sudo umount /var/www/html'

# GDB
alias gdb='gdb -quiet'

# Mega sync all my screencasts
alias synccasts='megacmd sync ~/Videos/Screencasts mega:/Screencasts'

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

disable -a sl
