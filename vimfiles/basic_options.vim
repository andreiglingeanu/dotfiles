" autoread file when changed
set autoread
" edit in russian with ease
" set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz
" set modelines
set modeline
" use visual bell instead of beeping
set visualbell
" show number column
set number
set numberwidth=1
set hidden
" save lots of lines to undo
set history=1000
set noexpandtab

set tabstop=4
set shiftwidth=4
set softtabstop=4

" round scrollign to a multiple of shiftwidth
set shiftround
" show search match
set showmatch
" increasing search
set incsearch
" highlight search results
set hlsearch
" makes searches case-sensitive only if they contain upper-case characters
set ignorecase smartcase
" highlight current line
set cursorline
" draw a column after 80 chars, useful for formating code
set colorcolumn=80
" commmand line height
set cmdheight=1
" copy indent from previous line
set autoindent
" set tilda operator
set tildeop
" set smartindent
set switchbuf=useopen
" show tab line only when there is more than one tab
set showtabline=1
" backups
set nobackup
set nowritebackup

set backupdir=~/.vim-tmp,~/.tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,/var/tmp,/tmp
set backupdir=~/.vim-tmp,~/.tmp,/var/tmp,/tmp
" undo closed files
set undofile
" directory to store temporary undos
set undodir=/tmp/vimundo
" allow backspacing over everything in insert mode
set backspace=indent,eol,start
" display incomplete commands
set showcmd
" Enably syntax highlighting
syntax on
" fancy ex mode
set wildmode=full
" make tab completion for files/buffers act like bash
set wildmenu
" set list chars
set list
set listchars=tab:\.\ ,trail:-,eol:¬
set linebreak
" show break symbol
set showbreak=>\
" correct encodings
set encoding=utf-8
set fileencoding=utf-8
" o-prefixed numbers are still decimal
set nrformats-=octal

" Prevent Vim from clobbering the scrollback buffer. See
" http://www.shallowsky.com/linux/noaltscreen.html
set t_ti= t_te=



" Fix slow O inserts
" ":set timeout timeoutlen=1000 ttimeoutlen=100
" Set the tag file search order
set tags=./tags;

