"Use current file directory
autocmd BufEnter * lcd %:p:h

"Others
set undofile
cabbrev help tab help
noremap Q <Nop>

set undodir=~/.vim/undo//
set directory=~/.vim/swp//
