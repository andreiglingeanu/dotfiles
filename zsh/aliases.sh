# Utility
alias reload='source ~/.zshrc'
alias ea='v ~/zsh-antigen/zsh/aliases.sh && reload' # Edit aliases
alias eal='v ~/Dropbox/bin/login_aliases.sh && reload' # Edit login aliases
alias eas='v ~/secrets.sh && reload' # Edit secrets
alias ec='v ~/zsh-antigen/zsh/config.sh && reload' # Edit config
alias ev='v ~/zsh-antigen/zsh/env.sh && reload' # Edit environment specific vars
alias ee='v ~/zsh-antigen/zshrc && reload' # Edit zshrc
alias trr='trs {=ru}'
alias k='kill -9 %${1-1}'
alias to='touch'
alias info='info --vi-keys'
alias vg='vagrant'
alias generate_secure_password='openssl passwd -1 "plaintextpassword"'
alias generate_tags='ag -l | ctags --links=no -L-'
alias wp_shell="wp --require=/Users/andreiglingeanu/Dropbox/bin/psysh shell"
alias wk="cd /Users/andreiglingeanu/Projects/full && clear && echo 'do your work, motherfucker'"

alias ls="ls -G"

alias editini="vim /usr/local/etc/php/5.6/php.ini"
alias mamp="cd /Applications/MAMP/htdocs/"

# copy & paste utilities
alias copy='xclip -selection clipboard'
alias paste='xclip -selection clipboard -o'

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
alias gmf='git merge --no-ff'

# Finder
# alias o='gnome-open'
# alias open='gnome-open'
alias lh='gnome-open http://localhost'

# python
alias py='python3'

# ruby
alias r='bin/rails'

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
alias vim='/usr/local/bin/vim' # switch vim to the brew's one
alias v='vim'
alias vf='v `fzf -m`' # https://github.com/junegunn/fzf
alias gvim="gvim --remote-tab-silent"

# Apache
alias apar='sudo /etc/init.d/apache2 restart'
alias apastop='sudo /etc/init.d/apache2 stop'
alias apastart='sudo /etc/init.d/apache2 start'
alias apaconf='sudo vim /etc/apache2/apache2.conf'
alias phpconf='sudo vim /etc/php5/apache2/php.ini'
alias apacurdir='sudo mount -t afp  . /Library/WebServer/Documents'
alias apacurdirstop='sudo umount /var/www/html'

# MAMP
alias mamp_start="/Applications/MAMP/bin/startApache.sh"
alias mamp_stop="/Applications/MAMP/bin/stopApache.sh"

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

# disable -a sl

# WORK HARD BITCH
alias work='sudo getshitdone work'
alias play='sudo getshitdone play'
alias t='todo.sh'

# Open Source
alias os='cd ~/Dropbox/Projects/open_source && echo "Start contributing, nigga."'

#########
#  GIT  #
#########

alias ga='git add'
alias gaa='git add --all'

alias gb='git branch'
alias gba='git branch -a'
alias gbd='git branch -d'

alias gc='git commit -v'
alias gc!='git commit -v --amend'
alias gcn!='git commit -v --no-edit --amend'
alias gca='git commit -v -a'
alias gca!='git commit -v -a --amend'
alias gcan!='git commit -v -a --no-edit --amend'
alias gcans!='git commit -v -a -s --no-edit --amend'
alias gcam='git commit -a -m'
alias gcsm='git commit -s -m'
alias gcb='git checkout -b'
alias gcf='git config --list'
alias gcl='git clone --recursive'
alias gcm='git checkout master'
alias gcd='git checkout develop'
alias gcmsg='git commit -m'
alias gco='git checkout'
alias gcount='git shortlog -sn'
compdef _git gcount

alias gd='git diff'
alias gdca='git diff --cached'
alias gdct='git describe --tags `git rev-list --tags --max-count=1`'
alias gdt='git diff-tree --no-commit-id --name-only -r'
alias gdw='git diff --word-diff'

gdv() { git diff -w "$@" | view - }
compdef _git gdv=git-diff

alias gf='git fetch'
alias gfa='git fetch --all --prune'
alias gfo='git fetch origin'

function gfg() { git ls-files | grep $@ }
compdef _grep gfg

ggf() {
  [[ "$#" != 1 ]] && local b="$(git_current_branch)"
  git push --force origin "${b:=$1}"
}
compdef _git ggf=git-checkout

ggl() {
  if [[ "$#" != 0 ]] && [[ "$#" != 1 ]]; then
    git pull origin "${*}"
  else
    [[ "$#" == 0 ]] && local b="$(git_current_branch)"
    git pull origin "${b:=$1}"
  fi
}
compdef _git ggl=git-checkout

ggp() {
  if [[ "$#" != 0 ]] && [[ "$#" != 1 ]]; then
    git push origin "${*}"
  else
    [[ "$#" == 0 ]] && local b="$(git_current_branch)"
    git push origin "${b:=$1}"
  fi
}
compdef _git ggp=git-checkout

ggpnp() {
  if [[ "$#" == 0 ]]; then
    ggl && ggp
  else
    ggl "${*}" && ggp "${*}"
  fi
}
compdef _git ggpnp=git-checkout

ggu() {
  [[ "$#" != 1 ]] && local b="$(git_current_branch)"
  git pull --rebase origin "${b:=$1}"
}
compdef _git ggu=git-checkout

alias ggpur='ggu'
compdef _git ggpur=git-checkout

alias ggpull='git pull origin $(git_current_branch)'
compdef _git ggpull=git-checkout

alias ggpush='git push origin $(git_current_branch)'
compdef _git ggpush=git-checkout

alias ggsup='git branch --set-upstream-to=origin/$(git_current_branch)'
alias gpsup='git push --set-upstream origin $(git_current_branch)'

alias gignore='git update-index --assume-unchanged'
alias gignored='git ls-files -v | grep "^[[:lower:]]"'
alias git-svn-dcommit-push='git svn dcommit && git push github master:svntrunk'
compdef _git git-svn-dcommit-push=git

alias gk='\gitk --all --branches'
compdef _git gk='gitk'
alias gke='\gitk --all $(git log -g --pretty=%h)'
compdef _git gke='gitk'

alias gl='git pull'

alias gm='git merge'

alias gp='git push'
alias gpd='git push --dry-run'
alias gpoat='git push origin --all && git push origin --tags'
compdef _git gpoat=git-push
alias gpu='git push upstream'
alias gpv='git push -v'

alias gr='git remote'
alias gra='git remote add'
alias grb='git rebase'
alias grba='git rebase --abort'
alias grbc='git rebase --continue'
alias grbi='git rebase -i'
alias grbm='git rebase master'
alias grbs='git rebase --skip'
alias grh='git reset HEAD'
alias grhh='git reset HEAD --hard'
alias grmv='git remote rename'
alias grrm='git remote remove'
alias grset='git remote set-url'
alias grt='cd $(git rev-parse --show-toplevel || echo ".")'
alias gru='git reset --'
alias grup='git remote update'
alias grv='git remote -v'

alias gsb='git status -sb'
alias gsd='git svn dcommit'
alias gsi='git submodule init'
alias gsps='git show --pretty=short --show-signature'
alias gsr='git svn rebase'
alias gss='git status -s'
alias gst='git status'
alias gsta='git stash save'
alias gstaa='git stash apply'
alias gstc='git stash clear'
alias gstd='git stash drop'
alias gstl='git stash list'
alias gstp='git stash pop'
alias gsts='git stash show --text'
alias gsu='git submodule update'

alias gts='git tag -s'
alias gtv='git tag | sort -V'

alias gunignore='git update-index --no-assume-unchanged'
alias gunwip='git log -n 1 | grep -q -c "\-\-wip\-\-" && git reset HEAD~1'
alias gup='git pull --rebase'
alias gupv='git pull --rebase -v'
alias glum='git pull upstream master'


##########
#  tmux  #
##########
alias ta='tmux attach -t'


