""""""""""""""""""""
"  rails mappings  "
""""""""""""""""""""
map <leader>gr :topleft :split config/routes.rb<cr>
map <leader>S <c-w>s<c-w>K:enew<cr>
map <leader>gs :topleft :split db/schema.rb<cr>
map <leader>gL :topleft :split config/locales<cr>
nnoremap <leader>F  :CtrlP .<cr>
nnoremap <leader>gv :CtrlP app/views<cr>
nnoremap <leader>gc :CtrlP app/controllers<cr>
nnoremap <leader>gm :CtrlP app/models<cr>
nnoremap <leader>gh :CtrlP app/helpers<cr>
nnoremap <leader>gl :CtrlP lib<cr>
nnoremap <leader>gp :CtrlP public<cr>
nnoremap <leader>gS :CtrlP app/assets/stylesheets<cr>
nnoremap <leader>gj :CtrlP app/assets/javascripts<cr>
nnoremap <leader>gf :CtrlP features<cr>

""""""""""""""""""""""
"  ruby test runner  "
""""""""""""""""""""""

" map <Leader>t :call RunCurrentSpecFile()<CR>
" map <Leader>s :call RunNearestSpec()<CR>
" map <Leader>l :call RunLastSpec()<CR>
" map <Leader>a :call RunAllSpecs()<CR>
" let g:rspec_command = "!clear && rspec {spec}"

"""""""""""""""
"  Quick Fix  "
"""""""""""""""
map <Leader>qn :cnext<cr>
map <Leader>qp :cprevious<cr>

map <Leader>j :FlowJumpToDef<cr>

""""""""""""""""""""""""""
"  toggle between files  "
""""""""""""""""""""""""""
noremap <leader>f <C-^>

""""""""""""""""""""""""
"  move around splits  "
""""""""""""""""""""""""
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

"""""""""""""""""""
"  toggle window  "
"""""""""""""""""""
noremap <leader>w <c-w>w

"""""""""""""""""
"  toggle fold  "
"""""""""""""""""
nnoremap <Space>z za

"""""""""""""""""""""""""""""""""""""""
"  hash rockets and others like this  "
"""""""""""""""""""""""""""""""""""""""
" Insert a hash rocket with <c-l>
inoremap <c-l> <space>=><space>
" Scoala, PASCAL
autocmd FileType pascal inoremap <C-l> <space>:=<space>
autocmd FileType st inoremap <C-l> <space>:=<space>
autocmd FileType php imap <C-l> <space>-><space>

""""""""""""""""""
"  tab mappings  "
""""""""""""""""""

noremap <leader>pt :tabnew<cr>
noremap <leader>pe :tabedit
noremap <leader>pc :tabclose<cr>
noremap <leader>po :tabonly<cr>
noremap <leader>pn :tabnext<cr>
noremap <leader>pp :tabprevious<cr>
noremap <leader>pf :tabfirst<cr>
noremap <leader>pl :tablast<cr>
noremap <leader>pm :tabmove

" toggle list chars
" nnoremap <leader>l :set list!<cr>

" Upcase a WORD
inoremap <C-u> <C-c>bgUeea
" Upcase a WORD in normal mode
nnoremap <C-u> viwU

""""""""""""""""""
"  bang command  "
""""""""""""""""""
nnoremap ! :!

"""""""""""""""""""""""""""""""""""""""""
"  Nice file completion in insert mode  "
"""""""""""""""""""""""""""""""""""""""""
inoremap <C-X><C-F> <C-O>:lcd %:p:h<CR><C-X><C-F>

""""""""""""
"  tricks  "
""""""""""""
map <leader>l :w\|:!reload-chrome && open -a Google\ Chrome<cr><cr>

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

command! CopyFilePath :let @+ = expand("%")

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" FindConditionals COMMAND
" Start a search for conditional branches, both implicit and explicit
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
command! FindConditionals :normal /\<if\>\|\<unless\>\|\<and\>\|\<or\>\|||\|&&<cr>

""""""""""""""""""""
"  Open Shortcode  "
""""""""""""""""""""
map <leader>ts :CtrlP framework-customizations/extensions/shortcodes/shortcodes/<cr>
map <leader>te :CtrlP framework-customizations/extensions/<cr>

map <leader>tt :tabedit %<cr>
map <leader>tc :tabclose<cr>

nnoremap <leader>wtf oputs "#" * 90<c-m>puts caller<c-m>puts "#" * 90<esc>


