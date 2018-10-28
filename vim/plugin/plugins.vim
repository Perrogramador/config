filetype off
set nocompatible
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"call vundle#begin('~/some/path/here')

Plugin 'VundleVim/Vundle.vim'
Plugin 'ervandew/supertab'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdcommenter' 
Plugin 'google/vim-searchindex'
Plugin 'vim-airline/vim-airline'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'jason0x43/vim-js-indent'

Plugin 'ctrlpvim/ctrlp.vim'
let g:ctrlp_map = '<C-P>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'

call vundle#end()            " required
filetype plugin indent on    " required
