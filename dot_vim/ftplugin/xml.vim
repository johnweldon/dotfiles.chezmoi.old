if exists("b:did_ftplugin")
  finish
endif
let b:did_ftplugin = 1

nmap <buffer> <LocalLeader>r <Plug>FormatXML
nmap <buffer> <script> <Plug>FormatXML <SID>Format
nmenu <script> Plugin.Format\ XML <SID>Format
nmap <SID>Format :call <SID>Format()<CR>

function! s:Format()
	let pos = getpos('.')
	silent update
	silent %!xmlstarlet fo
	call setpos('.', pos)
endfunction


command! -nargs=0 Format :call s:Format()
