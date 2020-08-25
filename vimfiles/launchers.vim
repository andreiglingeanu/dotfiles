command! CtServer :Start echo 'Main Server' && cd  ~/Dropbox/Projects/full/wp && php -S localhost:3000

command! CtTestServer :Start echo 'Test Server' && cd ~/Dropbox/Projects/full/wp_test && php -S localhost:6800

set path=.,src
set suffixesadd=.js,.jsx

function! LoadMainNodeModule(fname)
    let nodeModules = "./node_modules/"
    let packageJsonPath = nodeModules . a:fname . "/package.json"

    if filereadable(packageJsonPath)
        return nodeModules . a:fname . "/" . json_decode(join(readfile(packageJsonPath))).main
    else
        return nodeModules . a:fname
    endif
endfunction

set includeexpr=LoadMainNodeModule(v:fname)

