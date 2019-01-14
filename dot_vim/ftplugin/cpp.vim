if exists("b:did_ftplugin")
  finish
endif
let b:did_ftplugin = 1

setlocal ts=4 sts=4 sw=4 tw=79 et ai ff=unix

nmap <buffer> <LocalLeader>r <Plug>FormatCPP
nmap <buffer> <script> <Plug>FormatCPP <SID>Format
nmenu <script> Plugin.Format\ CPP <SID>Format
nmap <SID>Format :call <SID>Format()<CR>

function! s:Format()
	let pos = getpos('.')
	silent update
	silent %!astyle --project
	call setpos('.', pos)
endfunction

command! -nargs=0 Format :call s:Format()
