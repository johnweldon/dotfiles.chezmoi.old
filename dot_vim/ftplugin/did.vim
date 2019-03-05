if exists("b:did_ftplugin")
  finish
endif
let b:did_ftplugin = 1

function Timestamp()
  $pu =strftime('[%H:%M:%S] ')
  execute "normal! $A" . expand($DID_MESSAGE) . ""
endfunction

autocmd VimEnter 2???-??-??.did call Timestamp()

