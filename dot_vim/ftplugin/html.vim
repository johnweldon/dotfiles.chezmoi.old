if exists("b:did_ftplugin")
  finish
endif
let b:did_ftplugin = 1

nmap <buffer> <LocalLeader>r <Plug>FormatHTML
nmap <buffer> <script> <Plug>FormatHTML <SID>Format
nmenu <script> Plugin.Format\ HTML <SID>Format
nmap <SID>Format :call <SID>Format()<CR>

function! s:Format()
	let pos = getpos('.')
	silent update
	silent %!html-beautify --type "html" --editorconfig -n -p -f -
	call setpos('.', pos)
endfunction


command! -nargs=0 Format :call s:Format()
