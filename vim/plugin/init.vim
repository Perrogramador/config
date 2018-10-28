source '~/.vim/plugins.vim'
source '~/.vim/visual.vim'
source '~/.vim/identation.vim'
source '~/.vim/navigation.vim'
source '~/.vim/edition.vim'

"Use current file directory
autocmd BufEnter * lcd %:p:h

"Others
set undofile
cabbrev help tab help
noremap Q <Nop>
