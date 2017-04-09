zsh-antigen
===========

Antigen-based zsh configuration. Clone this into ~/.zsh-antigen, and then symlink the zshrc file to ~/.zshrc:

```
git clone https://github.com/mgdm/zsh-antigen.git ~/.zsh-antigen
cd
ln -s .zsh-antigen/zshrc .zshrc
ln -s .zsh-antigen/ruby/gemrc .gemrc
ln -s .zsh-antigen/ruby/irbrc .irbrc
ln -s .zsh-antigen/tmux.conf .tmux.conf
```

Includes a library of vim snippets for the majestic
[Ultisnips](https://github.com/SirVer/ultisnips) plugin, in the `vim-snippets`
directory. Should be copied over (or symlinked) as `~/.vim/UltiSnips`
in order to work properly.
