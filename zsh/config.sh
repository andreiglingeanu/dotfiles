HISTFILE=~/.zsh_history
SAVEHIST=10000
HISTSIZE=10000

REPORTTIME=10
LISTMAX=0

# My zsh theme
# Plugins

# Load completions for Ruby, Git, etc.
autoload -U compinit promptinit
compinit
promptinit;


# Rvm stuff
[[ -s "$HOME/.rvm/scripts/rvm" ]]
[[ -r $rvm_path/scripts/completion ]] && . $rvm_path/scripts/completion

# launch tmux by default
# TMUX
#if [[ ! $TERM =~ screen ]]; then
    #exec tmux -2
#fi

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
