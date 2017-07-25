source ~/dotfiles/vimfiles/plugins.vim

filetype plugin indent on

" leader key
let mapleader=" "

source ~/dotfiles/vimfiles/basic_options.vim
source ~/dotfiles/vimfiles/folding.vim
source ~/dotfiles/vimfiles/gui.vim
source ~/dotfiles/vimfiles/autocommands.vim
source ~/dotfiles/vimfiles/runners.vim
source ~/dotfiles/vimfiles/colors.vim
source ~/dotfiles/vimfiles/statusline.vim
source ~/dotfiles/vimfiles/mappings.vim
source ~/dotfiles/vimfiles/plugins_config.vim
source ~/dotfiles/vimfiles/launchers.vim
source ~/dotfiles/vimfiles/terminal.vim

runtime macros/matchit.vim

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

" XMPFILTER Settings {{{ "

let g:xmpfilter_cmd = "xmpfilter -a --no-warnings"
map <F5> <Plug>(xmpfilter-run)
imap <F5> <Plug>(xmpfilter-run)

function! Ruby_eval_insert_hash()
  let curline=line(".")
  exec "normal A # => \<esc>\<F5>\0"
  exec "normal ggVG:Tabularize /# =>\<cr>"
  execute 'silent '.curline
  unlet curline
endfunction

function! Ruby_eval_no_align()
  exec "normal A # => \<esc>\<F5>\0"
endfunction

autocmd FileType ruby noremap <F6> :call Ruby_eval_insert_hash()<cr>
autocmd FileType ruby inoremap <F6> <C-R>=Ruby_eval_insert_hash()<cr>
autocmd FileType ruby noremap <F4> :call Ruby_eval_no_align()<cr>
autocmd FileType ruby inoremap <F4> <C-R>=Ruby_eval_no_align()<cr>
autocmd FileType ruby noremap <leader><leader>m <Plug>(xmpfilter-mark)
autocmd FileType ruby noremap  <leader><leader>M 0f#Dx0

" }}} XMPFILTER Settings "

" Promote variable to rspec let {{{ "

function! PromoteToLet()
  :normal! dd
  " :exec '?^\s*it\>'
  :normal! P
  :.s/\(\w\+\) = \(.*\)$/let(:\1) { \2 }/
  :normal ==
endfunction
au FileType ruby :command! PromoteToLet :call PromoteToLet()
au FileType ruby :noremap <leader>p :PromoteToLet<cr>

" }}} Promote variable to rspec let "

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

  normal zz
endfunction
nnoremap <F9> mz:execute TabToggle()<CR>'z

" }}} Toggle between tabs and spaces "

" Live vimrc {{{ "

" Source the vimrc file after saving it
if has("autocmd")
  "autocmd! bufwritepost .vimrc source $MYVIMRC
  "autocmd bufwritepost .vimrc :AirlineRefresh
endif
nnoremap <leader>cc :edit $MYVIMRC<CR>
nnoremap <leader>cs :source $MYVIMRC<CR>

" }}} Live vimrc "

" Ngingx {{{ "
au BufRead,BufNewFile /etc/nginx/*,nginx.conf,/usr/local/nginx/conf/* if &ft == '' | setfiletype nginx | endif 
" }}} Ngingx "

" Airline {{{ "
"let g:airline_powerline_fonts = 1
"let g:airline_theme='molokai'
"let g:airline_theme='luna'
"let g:airline_left_sep='['
"let g:airline_right_sep=']'
"let g:airline_linecolumn_prefix = '§'
"let g:airline_paste_symbol = 'Þ'
"let g:airline_readonly_symbol = 'Ʀ'
" }}} Airline "

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
iabbrev @@@ andrei.glingeanu@gmail.com
" }}} Abbreviations "
" andrei.glingeanu@gmail.com
"

" Open changed files {{{ "
" Open a split for each dirty file in git
function! OpenChangedFiles()
  only " Close all windows, unless they're modified
  let status = system('git status -s | grep "^ \?\(M\|A\|UU\)" | sed "s/^.\{3\}//"')
  let filenames = split(status, "\n")
  exec "edit " . filenames[0]
  for filename in filenames[1:]
    exec "sp " . filename
  endfor
endfunction
command! OpenChangedFiles :call OpenChangedFiles()
" }}} Open changed files "

" Insert time {{{ "
command! InsertTime :normal a<c-r>=strftime('%F %H:%M:%S.0 %z')<cr>
" }}} Insert time "

" The Little Schemer {{{ "
  autocmd FileType scheme map <leader>r :!clear && racket % -e ~/Projects/scheme/the_little_schemer/tls.ss <cr>
  autocmd FileType scheme let b:delimitMate_quotes = ""
" }}} The Little Schemer "

" Open files directory in current file {{{ "
cnoremap %% <C-R>=expand('%:h').'/'<cr>
cnoremap ## <C-R>='/tmp/scratch.vim'<cr>
map <leader>e :edit %%
map <leader>v :view %%
map <leader>V :vsp %%
set splitright
set splitbelow

" }}} Open files directory in current file "

" PHP Documentation {{{ "
let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates_snip"
nnoremap <buffer> <C-p> :call pdv#DocumentWithSnip()<CR>
" }}} PHP Documentation "
"
nnoremap __ :split \|<Space>
nnoremap \|\| :vsplit \|<Space>
