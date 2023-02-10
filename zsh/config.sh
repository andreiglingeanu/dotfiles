HISTFILE=~/.zsh_history
SAVEHIST=10000
HISTSIZE=10000

REPORTTIME=10
LISTMAX=0

# Load completions for Ruby, Git, etc.
autoload -U compinit promptinit
compinit
promptinit;

# Extended globbing
setopt extended_glob
