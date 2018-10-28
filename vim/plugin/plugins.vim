call plug#begin('~/.vim/bundle')
Plug 'ervandew/supertab'
Plug 'Valloric/YouCompleteMe'
Plug 'scrooloose/nerdcommenter'
Plug 'google/vim-searchindex'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'jason0x43/vim-js-indent'
Plug 'ctrlpvim/ctrlp.vim'
call plug#end()

let g:ctrlp_map = '<C-P>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
