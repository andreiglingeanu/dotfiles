augroup vimrcEx
  autocmd!

  autocmd FileType text setlocal textwidth=78
  autocmd FileType php  setlocal keywordprg=pman

  autocmd BufNewFile,BufRead *.coffee set filetype=coffee
  autocmd BufNewFile,BufRead *Cakefile set filetype=coffee
  autocmd BufNewFile,BufRead *.coffeekup,*.ck set filetype=coffee
  autocmd BufNewFile,BufRead *._coffee set filetype=coffee

  " Jump to last cursor position unless it's invalid or in an event handler
  autocmd BufReadPost *
              \ if line("'\"") > 0 && line("'\"") <= line("$") |
              \   exe "normal g`\"" |
              \ endif

  autocmd FileType ruby,pascal,haml,eruby,yaml,html,sass,cucumber,css
              \ set ai sw=2 sts=2 et
  autocmd FileType python,javascript set ai sw=4 sts=4 et
  autocmd! BufRead,BufNewFile *.sass setfiletype sass

  autocmd BufRead *.mkd set ai formatoptions=tcroqn2 comments=n:&gt;
  autocmd BufRead *.markdown set ai formatoptions=tcroqn2 comments=n:&gt;

  autocmd! FileType mkd setlocal syn=off

  " autocmd! CmdwinEnter * :unmap <cr>
  " autocmd! CmdwinLeave * :call MapCR()
 
  function! FoldingEnter()
    if &buftype ==# 'quickfix'
      execute "normal! \<CR>"
    else
      " https://github.com/mileszs/ack.vim/blob/eede0425f50d92be89ee8fb4560a5afb707c2a54/autoload/ack.vim#L158
      call feedkeys(":nohlsearch \<CR>", "n")
    endif
  endfunction

  nnoremap <CR> :call FoldingEnter()<CR>


  autocmd BufNewFile,BufRead *_spec.rb compiler rspec
  " .ru and .thor are Ruby.
  au BufRead,BufNewFile *.ru set filetype=ruby
  au BufRead,BufNewFile *.cap set filetype=ruby
  au BufRead,BufNewFile *.thor set filetype=ruby
  au BufRead,BufNewFile Guardfile set filetype=ruby
  au BufRead,BufNewFile Rakefile set filetype=ruby
  au BufRead,BufNewFile Berksfile set filetype=ruby
augroup END
