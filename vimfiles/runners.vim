augroup runners
  autocmd!

  command! -nargs=* -complete=file -bar QuickTmp
    \ tabnew /tmp/quick-tmp.<args>

  autocmd! FileType c
        \ command! -nargs=* -complete=file -bar Runner
        \ ! clear && make %:r && ./%:r

  autocmd! FileType swift
        \ command! -nargs=* -complete=file -bar Runner
        \ ! clear && swift %

  autocmd FileType c
        \ command! -nargs=* -complete=file -bar Valgrind
        \ ! clear && valgrind ./%:r

  autocmd FileType c
        \ command! -nargs=* -complete=file -bar Debug
        \ ! clear && gdb ./%:r

  autocmd FileType cpp
        \ command! -nargs=* -complete=file -bar Runner
        \ ! clear && g++ -o %:r % && ./%:r

  autocmd! FileType asm
        \ command! -nargs=* -complete=file -bar Runner
        \ ! clear && gcc -o %:r -m32 % && ./%:r

  autocmd! FileType javascript
        \ command! -nargs=* -complete=file -bar Runner ! clear && node %

  " npm i -g repl.js
  " for this to work
  autocmd FileType javascript
        \ command! -nargs=* -complete=file -bar RunnerRepl ! clear && repl.js -f %:p

  autocmd FileType javascript
        \ command! -nargs=* -complete=file -bar RunnerReplFile ! clear && repl.js -f <args>

  autocmd! FileType python
        \ command! -nargs=* -complete=file -bar Runner ! clear && python %

  autocmd! FileType php
        \ command! -nargs=* -complete=file -bar Runner ! clear && php %

  autocmd FileType php
        \ command! -nargs=* -complete=file -bar RunnerRepl ! clear && psysh %

  autocmd! FileType pascal
        \ command! -nargs=* -complete=file -bar Runner
        \ ! clear && pc %:r && ./%:r

  autocmd! FileType perl
        \ command! -nargs=* -complete=file -bar Runner
        \ ! clear && perl %

  autocmd! filetype ruby
        \ command! -nargs=* -complete=file -bar runner
        \ ! clear && ruby %

  autocmd! filetype ruby
        \ command! -nargs=* -complete=file -bar IRB
        \ ! clear && irb -I . -r %:r

  autocmd! FileType java
        \ command! -nargs=* -complete=file -bar Runner
        \ ! clear && javac % && java %:r <args>

  autocmd! FileType scheme
        \ command! -nargs=* -complete=file -bar Runner
        \ ! clear && racket -e '(load "%")'

  autocmd! FileType sml
        \ command! -nargs=* -complete=file -bar Runner
        \ ! clear && sml %

  autocmd! FileType haskell
        \ command! -nargs=* -complete=file -bar Runner
        \ ! clear && ghci %

  " command!
        " \ -nargs=* -complete=file -bar JavaCompile
        " \ ! clear && javac-algs4 % && java-algs4 %:r <args>
augroup END
