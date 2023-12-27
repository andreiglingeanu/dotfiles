laptop configs
==============

Antigen-based zsh configuration. Clone this into ~/dotfiles, and then symlink the zshrc file to ~/.zshrc:

```
git clone https://github.com/andreiglingeanu/dotfiles ~/dotfiles
cd
ln -s dotfiles/zshrc .zshrc
ln -s dotfiles/ruby/gemrc .gemrc
ln -s dotfiles/ruby/irbrc .irbrc
ln -s dotfiles/tmux.conf .tmux.conf

# path for Vundle.vim -> ~/.config/nvim/bundle

ln -s ~/dotfiles/vimfiles/init.lua ~/.config/nvim/init.lua
ln -s ~/dotfiles/vimrc ~/.config/nvim/vimrc.vim
```

VIM
===

Includes a library of vim snippets for the majestic
[Ultisnips](https://github.com/SirVer/ultisnips) plugin, in the `vim-snippets`
directory. Should be copied over (or symlinked) as `~/.vim/UltiSnips`
in order to work properly.
