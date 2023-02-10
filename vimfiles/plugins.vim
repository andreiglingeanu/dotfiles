" set the runtime path to include Vundle and initialize
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Colorschemes
" Plugin 'sjl/badwolf'
Plugin 'flazz/vim-colorschemes'
Plugin 'NLKNguyen/papercolor-theme'
Plugin 'rakr/vim-one'
Plugin 'arzg/vim-colors-xcode'
" Plugin 'ludovicchabant/vim-gutentags'
Plugin 'kristijanhusak/vim-js-file-import', {'do': 'npm install'}
Plugin 'github/copilot.vim'

Plugin 'EdenEast/nightfox.nvim'

" Plugin 'junegunn/seoul256.vim'
" Plugin 'quanganhdo/grb256'
" Plugin 'mgutz/vim-colors'
" Plugin 'junegunn/seoul256.vim'
" Plugin 'herrbischoff/cobalt2.vim'
" Plugin 'lifepillar/vim-solarized8'
" Plugin 'rakr/vim-one'

" Plugin 'sunaku/vim-ruby-minitest'
" Plugin 'sjl/gundo.vim'
" Plugin 'tpope/vim-rbenv'

Plugin 'StanAngeloff/php.vim'
Plugin 'slim-template/vim-slim'
" Plugin 'mileszs/ack.vim'
" Awesome rails.vim
" Plugin 'tpope/vim-rails'
" Plugin 'vim-scripts/TailMinusF'
" Plugin 'tpope/vim-dispatch'
" Plugin 'vim-scripts/dbext.vim'
Plugin 'tpope/vim-abolish'
" Plugin 'tpope/vim-vividchalk'
" Plugin 'tommcdo/vim-exchange'
" Plugin 'mattn/flappyvird-vim'
" Plugin 'AndrewRadev/splitjoin.vim'
" Plugin 'vim-ruby/vim-ruby'
Plugin 'kien/ctrlp.vim'
" Plugin 'scrooloose/nerdcommenter'
" Plugin 'ervandew/supertab'
" Plugin 'godlygeek/tabular'
" Plugin 'tpope/vim-rvm'
"Plugin 'scrooloose/syntastic'
"Plugin 'bling/vim-airline'
" Plugin 'tpope/vim-markdown'
" Plugin 'majutsushi/tagbar'
" Plugin 't9md/vim-ruby-xmpfilter'
Plugin 'xolox/vim-shell'
Plugin 'xolox/vim-misc'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
" Plugin 'thoughtbot/vim-rspec'
" Plugin 'kchmck/vim-coffee-script'
" Plugin 'mustache/vim-mustache-handlebars'
"Plugin 'ervandew/matchem'
"Plugin 'terryma/vim-multiple-cursors'
"Plugin 'scrooloose/nerdtree'
"Plugin 'flomotlik/vim-livereload'
Plugin 'othree/html5.vim'
"Plugin 'kien/rainbow_parentheses.vim'
"Plugin 'vim-scripts/nginx.vim'
"Plugin 'bilalq/lite-dfm'
"Plugin 'xuwupeng2000/vim-rails-apidock'
"Plugin 'goldfeld/vim-seek'
" Plugin 'tpope/vim-sleuth'
"Plugin 'tpope/vim-rake'
Plugin 'tpope/vim-vinegar'
" Plugin 'xsbeats/vim-blade'
"Plugin 'vim-scripts/dbext.vim'
"Plugin 'marijnh/tern_for_vim'
" Plugin '29decibel/vim-stringify'
" Plugin 'depuracao/vim-rdoc'
" Plugin 'evidens/vim-twig'
Plugin 'Raimondi/delimitMate'
" Plugin 'tpope/vim-endwise'
" Ultisnips
Plugin 'SirVer/ultisnips'
" Ultisnips snippets
" Plugin 'honza/vim-snippets'
" Plugin 'AndrewRadev/switch.vim'
" Plugin 'chilicuil/vim-sml-coursera'
" Plugin 'morhetz/gruvbox'
" Plugin 'jbgutierrez/vim-partial'
" Plugin 'groenewege/vim-less'
" Plugin 'wavded/vim-stylus'
" Plugin 'cakebaker/scss-syntax.vim'
" Plugin 'ashisha/image.vim'
" Plugin 'kana/vim-textobj-user'
" Plugin 'inside/vim-textobj-jsxattr'
" Plugin 'nelstrom/vim-textobj-rubyblock'
Plugin 'keith/swift.vim'
" Plugin 'mxw/vim-jsx'
" Plugin 'benmills/vimux'
" Plugin 'altercation/vim-colors-solarized'
" Plugin 'othree/yajs.vim'
Plugin 'airblade/vim-rooter'
" Plugin 'freitass/todo.txt-vim'
" Plugin 'raichoo/haskell-vim'
" Plugin 'rizzatti/dash.vim'
" Plugin 'kchmck/vim-coffee-script'
" Plugin 'wincent/ferret'
Plugin 'pangloss/vim-javascript'
" Plugin 'xolox/vim-notes'
" Plugin 'tobyS/vmustache'
" Plugin 'tobyS/pdv'
" Plugin 'tpope/vim-rails'
Plugin 'AndrewRadev/sideways.vim'
" Plugin 'tpope/vim-fugitive'
" Plugin 'jaxbot/github-issues.vim'
" Plugin 'zenorocha/dracula-theme', {'rtp': 'vim/'}
" Plugin 't9md/vim-ruby-xmpfilter'
Plugin 'editorconfig/editorconfig-vim'

Plugin 'Shougo/unite.vim'
Plugin 'ujihisa/unite-colorscheme'

Plugin 'Shougo/vimproc.vim'
" Plugin 'Shougo/denite.nvim'
Plugin 'Shougo/vimfiler.vim'
" Plugin 'tpope/vim-rhubarb'
" Plugin 'mustache/vim-mustache-handlebars'
Plugin 'dbakker/vim-projectroot'
Plugin 'terryma/vim-expand-region'
Plugin 'tpope/vim-commentary'
" Plugin 'mtth/scratch.vim'
" Plugin 'chrisbra/NrrwRgn'
" Plugin 'moll/vim-node'
" Plugin 'henrik/vim-yaml-flattener'
" Plugin 'sbruhns/rails-i18n-vim'
" Plugin 'andreiglingeanu/vim-i18n'
" Plugin 'diepm/vim-rest-console'
" Plugin 'posva/vim-vue'
Plugin 'flowtype/vim-flow'
" Plugin 'vim-syntastic/syntastic'
" Plugin 'dodie/vim-disapprove-deep-indentation'
" Plugin 'lambdalisue/vim-gista'
Plugin 'vim-scripts/oz.vim'
" Plugin 'jparise/vim-graphql'
Plugin 'prettier/vim-prettier', {'do': 'yarn install', 'branch': 'release/1.x' }
" Plugin 'splattael/rufo-vim'
" Plugin 'machakann/vim-highlightedyank'
" Plugin 'johngrib/vim-game-code-break'
" Plugin 'AndrewRadev/switch.vim'
Plugin 'leafgarland/typescript-vim'
" Plugin 'ElmCast/elm-vim'
" Plugin 'wavded/vim-stylus'
" Plugin 'jwalton512/vim-blade'
" Plugin 'Galooshi/vim-import-js'
" Plugin 'junegunn/goyo.vim'
" Plugin 'tpope/vim-db'
" Plugin 'kana/vim-operator-user'
" Plugin 'rhysd/vim-clang-format'
" Plugin 'rust-lang/rust.vim'
" Plugin 'janko-m/vim-test'

Plugin 'peitalin/vim-jsx-typescript'
Plugin 'chr4/nginx.vim'
Plugin 'mattn/emmet-vim'
Plugin 'styled-components/vim-styled-components'


" End list of plugin
call vundle#end()

