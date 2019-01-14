if exists("b:did_ftplugin")
  finish
endif
let b:did_ftplugin = 1

nmap <buffer> <LocalLeader>r :GoImports<cr>
nmap <buffer> gb <Plug>(go-build)<cr>
nmap <buffer> gd <Plug>(go-def)<cr>
nmap <buffer> gi <Plug>(go-import)<cr>
nmap <buffer> gt <Plug>(go-test)<cr>
nmap <buffer> gr <Plug>(go-run)<cr>
nmap <buffer> gc <Plug>(go-coverage-toggle)<cr>
