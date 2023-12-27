set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

" Colorschemes
" Plugin 'sjl/badwolf'
" Plugin 'flazz/vim-colorschemes'
Plugin 'NLKNguyen/papercolor-theme'
" Plugin 'rakr/vim-one'
" Plugin 'arzg/vim-colors-xcode'
" Plugin 'ludovicchabant/vim-gutentags'
Plugin 'dikiaap/minimalist'
Plugin 'kristijanhusak/vim-js-file-import', {'do': 'npm install'}
Plugin 'github/copilot.vim'

" Plugin 'EdenEast/nightfox.nvim'

Plugin 'StanAngeloff/php.vim'
Plugin 'slim-template/vim-slim'
Plugin 'tpope/vim-abolish'
Plugin 'nvim-lua/plenary.nvim'
Plugin 'nvim-telescope/telescope.nvim', { 'tag': '0.1.5' }
Plugin 'xolox/vim-shell'
Plugin 'xolox/vim-misc'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-vinegar'
Plugin 'SirVer/ultisnips'
Plugin 'keith/swift.vim'
Plugin 'airblade/vim-rooter'
Plugin 'pangloss/vim-javascript'
Plugin 'editorconfig/editorconfig-vim'

Plugin 'Shougo/unite.vim'
Plugin 'Shougo/vimfiler.vim'
Plugin 'tpope/vim-commentary'
Plugin 'mattn/webapi-vim'
Plugin 'mattn/vim-gist'

Plugin 'vim-scripts/oz.vim'
Plugin 'prettier/vim-prettier', {'do': 'yarn install', 'branch': 'release/1.x' }
Plugin 'leafgarland/typescript-vim'
Plugin 'peitalin/vim-jsx-typescript'
Plugin 'chr4/nginx.vim'
" Plugin 'm4xshen/autoclose.nvim'
Plugin 'windwp/nvim-autopairs'


" End list of plugin
call vundle#end()

