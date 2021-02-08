if exists("b:did_ftplugin")
  finish
endif
let b:did_ftplugin = 1

if executable('sql-formatter')
  nmap <buffer> <LocalLeader>r <Plug>FormatSQL
  nmap <buffer> <script> <Plug>FormatSQL <SID>Format
  nmenu <script> Plugin.Format\ SQL <SID>Format
  nmap <SID>Format :call <SID>Format()<CR>

  function! s:Format()
    let pos = getpos('.')
    silent update
    silent %!sql-formatter -u
    call setpos('.', pos)
  endfunction

  command! -nargs=0 Format :call s:Format()
endif
