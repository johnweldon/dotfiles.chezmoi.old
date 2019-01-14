
set guioptions=c
set guifont=Go_Mono:h9,Monospace\ 12

set columns=132
set lines=50

set vb t_vb=""

set background=dark


colorscheme industry
if has("gui_win32")
    set guifont=Go_Mono:h9,Source_Code_Pro:h12,Consolas:h12,Lucida_Console:h12
elseif has("gui_macvim")
    set guifont=Go_Mono:h9,Monaco:h12,Menlo:h12,Andale_Mono:h12
    colorscheme macvim
elseif has("x11")
    set guifont=Go_Mono:h9,Monospace\ 12
else
endif


if filereadable(findfile("~/.local.gvimrc"))
    source ~/.local.gvimrc
endif
