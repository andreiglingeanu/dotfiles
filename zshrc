# setopt XTRACE VERBOSE

ZSHA_BASE=$HOME/dotfiles

autoload -U zmv

source $ZSHA_BASE/zsh/env.sh
source $ZSHA_BASE/zsh/config.sh
source $ZSHA_BASE/zsh/theme.zsh
source $ZSHA_BASE/zsh/completions.sh

source <(antibody init)

antibody bundle zsh-users/zsh-syntax-highlighting
antibody bundle zsh-users/zsh-history-substring-search

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


# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /Users/andreiglingeanu/.config/yarn/global/node_modules/tabtab/.completions/serverless.zsh ]] && . /Users/andreiglingeanu/.config/yarn/global/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /Users/andreiglingeanu/.config/yarn/global/node_modules/tabtab/.completions/sls.zsh ]] && . /Users/andreiglingeanu/.config/yarn/global/node_modules/tabtab/.completions/sls.zsh
# tabtab source for yarn package
# uninstall by removing these lines or running `tabtab uninstall yarn`
[[ -f /Users/andreiglingeanu/.nvm/versions/node/v8.4.0/lib/node_modules/yarn-completions/node_modules/tabtab/.completions/yarn.zsh ]] && . /Users/andreiglingeanu/.nvm/versions/node/v8.4.0/lib/node_modules/yarn-completions/node_modules/tabtab/.completions/yarn.zsh

export PATH=/Users/andreiglingeanu/.local/bin/luna-studio:$PATH
