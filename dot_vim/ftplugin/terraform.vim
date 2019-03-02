if exists("b:did_ftplugin")
  finish
endif
let b:did_ftplugin = 1

nmap <buffer> <LocalLeader>r <Plug>FormatTerraform
nmap <buffer> <script> <Plug>FormatTerraform <SID>Format
nmenu <script> Plugin.Format\ Terraform <SID>Format
nmap <SID>Format :call <SID>Format()<CR>

function! s:Format()
	let pos = getpos('.')
	silent update
	silent %!terraform fmt -
	call setpos('.', pos)
endfunction


command! -nargs=0 Format :call s:Format()
