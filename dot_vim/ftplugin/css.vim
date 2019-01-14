if exists("b:did_ftplugin")
  finish
endif
let b:did_ftplugin = 1

nmap <buffer> <LocalLeader>r <Plug>FormatCSS
nmap <buffer> <script> <Plug>FormatCSS <SID>Format
nmenu <script> Plugin.Format\ CSS <SID>Format
nmap <SID>Format :call <SID>Format()<CR>

function! s:Format()
	let pos = getpos('.')
	silent update
	silent %!css-beautify --type "css" --editorconfig -n -p -f -
	call setpos('.', pos)
endfunction


command! -nargs=0 Format :call s:Format()
