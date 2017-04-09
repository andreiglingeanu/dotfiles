" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
" noremap <Leader>m :call UltiSnips_ListSnippets()<cr>
autocmd! FileType php :UltiSnipsAddFiletypes php
autocmd! FileType eruby :UltiSnipsAddFiletypes eruby
autocmd! FileType ruby :UltiSnipsAddFiletypes ruby
autocmd! FileType css :UltiSnipsAddFiletypes css
autocmd! FileType javascript :UltiSnipsAddFiletypes javascript
autocmd! FileType hmtl :UltiSnipsAddFiletypes html
autocmd! FileType c :UltiSnipsAddFiletypes c
autocmd! FileType cpp :UltiSnipsAddFiletypes cpp
autocmd! FileType less :UltiSnipsAddFiletypes css

""""""""""""""
"  supertab  "
""""""""""""""
let g:SuperTabCrMapping = 0

""""""""""""""""
"  switch.vim  "
""""""""""""""""
nnoremap <leader>o :Switch<cr>

"""""""""""""""
"  rails.vim  "
"""""""""""""""
" Change which file opens after executing :Rails command
let g:rails_default_file='config/database.yml'
let g:ruby_path = "/usr/bin/ruby"

""""""""""""""
"  syntasic  "
""""""""""""""
" let g:syntastic_quiet_messages = {'level': 'warnings'}
let g:syntastic_disabled_filetypes = ['html']

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


let g:syntastic_javascript_checkers = ['flow']

""""""""""""""""
"  javascript  "
""""""""""""""""
let g:javascript_plugin_flow = 1



"""""""""""
"  ctrlp  "
"""""""""""
map <leader><leader>y :CtrlPBuffer<cr>
map <leader><leader>t :CtrlPTag<cr>
let g:ctrlp_show_hidden=1
let g:ctrlp_working_path_mode=0
let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --hidden
      \ --ignore .git
      \ --ignore .svn
      \ --ignore .hg
      \ --ignore node_modules
      \ --ignore bower_components
      \ --ignore .DS_Store
      \ --ignore "**/*.pyc"
      \ -g ""'

"""""""""""
"  emmet  "
"""""""""""
imap <C-@> <C-y>,
imap <C-e> <C-y>,
let g:user_emmet_mode='a'    "enable all function in all mode.
let g:emmet_html5=1
let g:use_emmet_complete_tag=1
nmap <leader>y <C-y>n
nmap <leader>Y <C-y>N
vmap <leader>w <C-y>,

"""""""""""""""""
"  delimitmate  "
"""""""""""""""""
imap <C-K> <Plug>delimitMateS-Tab
let delimitMate_expand_cr=1

""""""""""""""
"  minitest  "
""""""""""""""
set completefunc=syntaxcomplete#Complete

"""""""""""""""""
"  Vim Partial  "
"""""""""""""""""

""""""""""""""""
"  JSX syntax  "
""""""""""""""""
let g:jsx_ext_required = 0

"""""""""""
"  VIMUX  "
"""""""""""
let g:VimuxOrientation = "h"
let g:VimuxHeight = "30"


""""""""""""""""""
"  php refactor  "
""""""""""""""""""
let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates_snip"
nnoremap <leader>d :call pdv#DocumentWithSnip()<CR>

""""""""""""""
"  sideways  "
""""""""""""""

nnoremap H :SidewaysLeft<cr>
nnoremap L :SidewaysRight<cr>

nnoremap ˙ :SidewaysJumpLeft<cr>
nnoremap ¬ :SidewaysJumpRight<cr>

omap aa <Plug>SidewaysArgumentTextobjA
xmap aa <Plug>SidewaysArgumentTextobjA
omap ia <Plug>SidewaysArgumentTextobjI
xmap ia <Plug>SidewaysArgumentTextobjI


""""""""""""""
"  fugitive  "
""""""""""""""
set diffopt+=vertical

"""""""""""""""""""
"  github issues  "
"""""""""""""""""""
let g:github_access_token = "f39ea9fc53676b876d422ec307a718f9ccf86261"

let g:gissues_async_omni = 1

"""""""""""""""""""""""""
"  seeing is believing  "
"""""""""""""""""""""""""

autocmd FileType ruby nmap <buffer> <F4> <Plug>(xmpfilter-mark)
autocmd FileType ruby xmap <buffer> <F4> <Plug>(xmpfilter-mark)
autocmd FileType ruby imap <buffer> <F4> <Plug>(xmpfilter-mark)

autocmd FileType ruby nmap <buffer> <F5> <Plug>(xmpfilter-run)
autocmd FileType ruby xmap <buffer> <F5> <Plug>(xmpfilter-run)
autocmd FileType ruby imap <buffer> <F5> <Plug>(xmpfilter-run)

""""""""""""
"  rooter  "
""""""""""""
let g:rooter_patterns = ['.rooter', 'Rakefile', '.git/']


""""""""""""""""""
"  editor cofig  "
""""""""""""""""""
let g:EditorConfig_exclude_patterns = ['fugitive://.*']
" let g:EditorConfig_core_mode = 'external_command'


"""""""""""
"  unite  "
"""""""""""
   let s:filters = {
   \   "name" : "preferred_unite_output",
   \}
   function! s:filters.filter(candidates, context)
      for candidate in a:candidates
         let bufname = bufname(candidate.action__buffer_nr)
         let filename = fnamemodify(bufname, ':p:t')
         let path = fnamemodify(bufname, ':p:h')

         " Customize output format.
         let candidate.abbr = printf("[%s] %s\\%s", filename, path, filename)
      endfor
      return a:candidates
   endfunction

   call unite#custom#source('buffer', 'converters', 'preferred_unite_output')

    let g:unite_source_codesearch_ignore_case = 1
    call unite#filters#matcher_default#use(['matcher_fuzzy'])
    call unite#custom#source('file,file/new,file_mru,buffer,file_rec',
    \ 'matchers', 'matcher_fuzzy')
    let g:unite_data_directory='~/.vim/.cache/unite'
    let g:unite_source_history_yank_enable=1
    if executable('ag')
        let g:unite_source_grep_command = 'ag'
        let g:unite_source_grep_default_opts='-i -r --line-numbers --nocolor --nogroup -S'
        let g:unite_source_grep_recursive_opt = ''
    endif


" nnoremap <c-k> :Unite file file_rec buffer<cr>
nnoremap <c-;> :Unite line<cr>

let g:vimfiler_as_default_explorer = 1

" Enable file operation commands.
" Edit file by tabedit.
call vimfiler#custom#profile('default', 'context', {
			\ 'safe' : 0,
			\ })

"""""""""""""""""""
"  expand region  "
"""""""""""""""""""
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

"""""""""""""
"  scratch  "
"""""""""""""
let g:scratch_persistence_file = '/tmp/scratch.vim'

""""""""""""""""
"  rails I18n  "
""""""""""""""""

vmap <Leader>z :call I18nTranslateString()<CR>
vmap <Leader>dt :call I18nDisplayTranslation()<CR>

""""""""""""""
"  vim rest  "
""""""""""""""

let g:vrc_horizontal_split = 1
let g:vrc_show_command = 0


""""""""""
"  flow  "
""""""""""
let g:flow#enable = 0
let g:flow#flowpath = "/Users/andreiglingeanu/.nvm/versions/node/v7.7.3/bin/flow"



