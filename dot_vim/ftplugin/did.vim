if exists("b:did_ftplugin")
  finish
endif
let b:did_ftplugin = 1

function Timestamp()
  $pu =strftime('[%H:%M:%S] ')
  if !empty($DID_MESSAGE)
    execute "normal! $A" . expand($DID_MESSAGE) . "\<esc>"
    execute ":wq!"
  else
    execute "normal! $A"
  endif
endfunction

autocmd VimEnter 2???-??-??.did call Timestamp()

