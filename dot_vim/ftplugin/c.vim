if exists("b:did_ftplugin")
  finish
endif
let b:did_ftplugin = 1

setlocal ts=4 sts=4 sw=4 tw=79 et ai ff=unix

if executable('astyle')
  nmap <buffer> <LocalLeader>r <Plug>FormatC
  nmap <buffer> <script> <Plug>FormatC <SID>Format
  nmenu <script> Plugin.Format\ C <SID>Format
  nmap <SID>Format :call <SID>Format()<CR>

  function! s:Format()
    let pos = getpos('.')
    silent update
    silent %!astyle
    call setpos('.', pos)
  endfunction

  command! -nargs=0 Format :call s:Format()
endif
