if exists("b:did_ftplugin")
  finish
endif
let b:did_ftplugin = 1

nmap <buffer> <LocalLeader>r <Plug>FormatJSON
nmap <buffer> <script> <Plug>FormatJSON <SID>Format
nmenu <script> Plugin.Format\ JSONt  <SID>Format
nmap <SID>Format :call <SID>FormatFnJSON()<CR>

function! s:FormatFnJSON()
  let pos = getpos('.')
  silent update
  silent %!jq .
  call setpos('.', pos)
endfunction

command! -nargs=0 Format :call s:FormatFnJSON()

