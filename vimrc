source ~/dotfiles/vimfiles/plugins.vim

filetype plugin indent on

" leader key
let mapleader=" "

source ~/dotfiles/vimfiles/basic_options.vim
source ~/dotfiles/vimfiles/autocommands.vim
source ~/dotfiles/vimfiles/colors.vim
source ~/dotfiles/vimfiles/statusline.vim
source ~/dotfiles/vimfiles/mappings.vim
source ~/dotfiles/vimfiles/plugins_config.vim
source ~/dotfiles/vimfiles/terminal.vim

" Arrow Keys are unacceptable {{{ "
noremap <Left> :echo "no!"<cr>
noremap <Right> :echo "no!"<cr>
noremap <Up> :echo "no!"<cr>
noremap <Down> :echo "no!"<cr>
inoremap <Left> <esc>:echo "no!"<cr>i
inoremap <Right> <esc>:echo "no!"<cr>i
inoremap <Up> <esc>:echo "no!"<cr>i
inoremap <Down> <esc>:echo "no!"<cr>i
cnoremap <Left> <esc>:echo "no!"<cr>i
cnoremap <Right> <esc>:echo "no!"<cr>i
cnoremap <Up> <esc>:echo "no!"<cr>i
cnoremap <Down> <esc>:echo "no!"<cr>i
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>
" }}} Arrow Keys are unacceptable "

" Rename Current FIle {{{ "

function! RenameFile()
  let old_name = expand('%')
  let new_name = input('New file name: ', expand('%'), 'file')
  if new_name != '' && new_name != old_name
    exec ':saveas ' . new_name
    exec ':silent !rm ' . old_name
    redraw!
  endif
endfunction
noremap <leader>n :call RenameFile()<cr>

" }}} Rename Current FIle "


" Vim as hex editor {{{ "

noremap <leader>h :%!xxd<cr>
noremap <leader>H :%!xxd -r<cr>

" }}} Vim as hex editor "

" Set tabstop, softtabstop and shiftwidth to the same value {{{ "

command! -nargs=* Stab call Stab()
function! Stab()
  let l:tabstop = 1 * input('set tabstop = softtabstop = shiftwidth = ')
  if l:tabstop > 0
    let &l:sts = l:tabstop
    let &l:ts = l:tabstop
    let &l:sw = l:tabstop
  endif
  call SummarizeTabs()
endfunction

function! SummarizeTabs()
  try
    echohl ModeMsg
    echon 'tabstop='.&l:ts
    echon ' shiftwidth='.&l:sw
    echon ' softtabstop='.&l:sts
    if &l:et
      echon ' expandtab'
    else
      echon ' noexpandtab'
    endif
  finally
    echohl None
  endtry
endfunction

" }}} Set tabstop, softtabstop and shiftwidth to the same value "

" Toggle between tabs and spaces {{{ "

" allow toggling between local and default mode
function! TabToggle()
  if &expandtab
    set noexpandtab
  else
    set expandtab
  endif

  normal zz<CR>'z
endfunction

" nnoremap <F9> mz:execute TabToggle()<CR>'z
command! TabToggle :call TabToggle()

" }}} Toggle between tabs and spaces "

" Ngingx {{{ "
au BufRead,BufNewFile /etc/nginx/*,nginx.conf,/usr/local/nginx/conf/* if &ft == '' | setfiletype nginx | endif 
" }}} Ngingx "

" Allowed vim modeline commands {{{ "
 let g:git_modelines_allowed_items = [
                 \ "textwidth",   "tw",
                 \ "softtabstop", "sts",
                 \ "tabstop",     "ts",
                 \ "shiftwidth",  "sw",
                 \ "expandtab",   "et",   "noexpandtab", "noet",
                 \ "filetype",    "ft",
                 \ "foldmethod",  "fdm",
                 \ "readonly",    "ro",   "noreadonly", "noro",
                 \ "rightleft",   "rl",   "norightleft", "norl",
                 \ "cindent",     "cin",  "nocindent", "nocin",
                 \ "smartindent", "si",   "nosmartindent", "nosi",
                 \ "autoindent",  "ai",   "noautoindent", "noai",
                 \ "spell",
                 \ "spelllang"
                 \ ]
" }}} Allowed vim modeline commands "

" Abbreviations {{{ "
iabbrev eml andrei.glingeanu@gmail.com
" }}} Abbreviations "

" Insert time {{{ "
command! InsertTime :normal a<c-r>=strftime('%F %H:%M:%S.0 %z')<cr>
" }}} Insert time "

" Open files directory in current file {{{ "
cnoremap %% <C-R>=expand('%:h').'/'<cr>
cnoremap ## <C-R>='/tmp/scratch.vim'<cr>
map <leader>e :edit %%
map <leader>v :view %%
map <leader>V :vsp %%
set splitright
set splitbelow
" }}} Open files directory in current file "

