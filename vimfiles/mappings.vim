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

" toggle list chars
" nnoremap <leader>l :set list!<cr>

" Upcase a WORD
inoremap <C-u> <C-c>bgUeea
" Upcase a WORD in normal mode
nnoremap <C-u> viwU

"""""""""""""""""""""""""""""""""""""""""
"  Nice file completion in insert mode  "
"""""""""""""""""""""""""""""""""""""""""
inoremap <C-X><C-F> <C-O>:lcd %:p:h<CR><C-X><C-F>

""""""""""""
"  tricks  "
""""""""""""
map <leader>l :w\|:!reload-chrome && open -a Google\ Chrome<cr><cr>

command! CopyFilePath :let @+ = expand("%")

" command! FetchAndPut :%!curl -s $(pbpaste)<cr>

map <leader>tc :tabclose<cr>


