# setopt XTRACE VERBOSE

ZSHA_BASE=$HOME/dotfiles

autoload -U zmv

source $ZSHA_BASE/zsh/env.sh
source $ZSHA_BASE/zsh/config.sh
source $ZSHA_BASE/zsh/theme.zsh
source $ZSHA_BASE/zsh/completions.sh

# source <(antibody init)

# antibody bundle zsh-users/zsh-syntax-highlighting
# antibody bundle zsh-users/zsh-history-substring-search

source $ZSHA_BASE/zsh/aliases.sh
source $ZSHA_BASE/zsh/git_aliases.sh
source $ZSHA_BASE/zsh/autoloading.sh

if [ -f $HOME/Dropbox/bin/login_aliases.sh ]; then
  source $HOME/Dropbox/bin/login_aliases.sh
fi

if [ -f $HOME/Dropbox/bin/server_aliases.sh ]; then
  source $HOME/Dropbox/bin/server_aliases.sh
fi

export PATH="/usr/local/sbin:$PATH"

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

bindkey -e

# TODO: config $cdpath

export PATH=/Users/andreiglingeanu/.local/bin/luna-studio:$PATH

export LDFLAGS="-L/usr/local/opt/openssl/lib"
export CPPFLAGS="-I/usr/local/opt/openssl/include"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/andreiglingeanu/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/andreiglingeanu/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/andreiglingeanu/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/andreiglingeanu/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

. /Users/andreiglingeanu/.google-drive-upload/google-drive-upload.binpath
