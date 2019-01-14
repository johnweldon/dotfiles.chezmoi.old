if exists("b:did_ftplugin")
  finish
endif
let b:did_ftplugin = 1

nmap <buffer> <LocalLeader>r <Plug>FormatJS
nmap <buffer> <script> <Plug>FormatJS <SID>Format
nmenu <script> Plugin.Format\ JavaScript <SID>Format
nmap <SID>Format :call <SID>FormatJavascript()<CR>

function! s:FormatJavascript()
  let pos = getpos('.')
  silent update
  silent %!js-beautify --editorconfig -j -n -p -f -
  call setpos('.', pos)
endfunction

command! -nargs=0 Format :call s:FormatJavascript()

