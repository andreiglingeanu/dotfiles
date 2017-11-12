HISTFILE=~/.zsh_history
SAVEHIST=10000
HISTSIZE=10000

REPORTTIME=10
LISTMAX=0

ZSH_TMUX_AUTOSTART=false

# My zsh theme
# Plugins

# Load completions for Ruby, Git, etc.
autoload -U compinit promptinit
compinit
promptinit;

# Extended globbing
setopt extended_glob

# launch tmux by default
# TMUX
#if [[ ! $TERM =~ screen ]]; then
    #exec tmux -2
#fi

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"

export PKG_CONFIG_PATH="/opt/ImageMagick/lib/pkgconfig"
export PKG_CONFIG_PATH=/usr/local/opt/imagemagick@6/lib/pkgconfig

# Opam
$HOME/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true
# eval $(opam config env) - use that someday

if [ -d /home/linuxbrew ]; then
	export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"
	export MANPATH="/home/linuxbrew/.linuxbrew/share/man:$MANPATH"
	export INFOPATH="/home/linuxbrew/.linuxbrew/share/info:$INFOPATH"

	PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"
fi
