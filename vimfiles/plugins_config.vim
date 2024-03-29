" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
  let g:UltiSnipsSnippetDirectories = ['UltiSnips', $HOME.'/dotfiles/vim-snippets']


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
"""""""""""""""""
"  delimitmate  "
"""""""""""""""""
" imap <C-K> <Plug>delimitMateS-Tab
" let delimitMate_expand_cr=1


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
   " let s:filters = {
   " \   "name" : "preferred_unite_output",
   " \}
   " function! s:filters.filter(candidates, context)
   "    for candidate in a:candidates
   "       let bufname = bufname(candidate.action__buffer_nr)
   "       let filename = fnamemodify(bufname, ':p:t')
   "       let path = fnamemodify(bufname, ':p:h')

   "       " Customize output format.
   "       let candidate.abbr = printf("[%s] %s\\%s", filename, path, filename)
   "    endfor
   "    return a:candidates
   " endfunction

   " call unite#custom#source('buffer', 'converters', 'preferred_unite_output')

   "  let g:unite_source_codesearch_ignore_case = 1
   "  call unite#filters#matcher_default#use(['matcher_fuzzy'])
   "  call unite#custom#source('file,file/new,file_mru,buffer,file_rec',
   "  \ 'matchers', 'matcher_fuzzy')
   "  let g:unite_data_directory='~/.vim/.cache/unite'
   "  let g:unite_source_history_yank_enable=1
   "  if executable('ag')
   "      let g:unite_source_grep_command = 'ag'
   "      let g:unite_source_grep_default_opts='-i -r --line-numbers --nocolor --nogroup -S'
   "      let g:unite_source_grep_recursive_opt = ''
   "  endif


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
let g:flow#omnifunc = 1

autocmd FileType javascript :setl omnifunc=flowcomplete#Complete

""""""""""""
"  ferret  "
""""""""""""
" let g:FerretMap = 0

""""""""""""""
"  startify  "
""""""""""""""
let g:startify_bookmarks = [ {'g': '~/gists_to_save'} ]

""""""""""""""
"  prettier  "
""""""""""""""

" number of spaces per indentation level
" let g:prettier#config#tab_width = 4

" use tabs over spaces
" let g:prettier#config#use_tabs = 'true'
" let g:prettier#config#semi = 'false'
" let g:prettier#config#trailing_comma = 'es5'
" let g:prettier#exec_cmd_async = 1
" let g:prettier#config#config_precedence = 'file-override'
let g:prettier#autoformat = 0
" autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue PrettierAsync
let g:prettier#nvim_unstable_async=1


let g:clang_format#style_options = {
            \ "AccessModifierOffset" : -4,
            \ "AllowShortIfStatementsOnASingleLine" : "true",
            \ "AlwaysBreakTemplateDeclarations" : "true",
            \ "Standard" : "C++11",
            \ "IndentWidth" : "2",
            \ "UseTab" : "Never",
            \ "BreakBeforeBraces" : "Stroustrup"}


" let g:prettier#config#bracket_spacing = 'false'

" Maybe get rid of that when I switch to regular day-to-day stuff
" let g:prettier#config#parser = 'babylon'
" let g:prettier#config#parser = 'typescript'

let g:vim_http_split_vertically = 1
let g:vim_http_tempbuffer = 1

let g:js_file_import_prompt_if_no_tag = 0
let g:js_file_import_from_root = 1
let g:js_file_import_root = getcwd() . "/src"


if executable('rg')
    let g:gutentags_file_list_command = 'rg --files'
endif

let g:user_emmet_settings = {
\  'javascript' : {
\      'extends' : 'jsx,css',
\  },
\}

let g:gist_token = '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'
