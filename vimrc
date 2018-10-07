filetype off                  " required
set nocompatible              " be iMproved, required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"call vundle#begin('~/some/path/here')

Plugin 'VundleVim/Vundle.vim'
Plugin 'davidhalter/jedi-vim'
Plugin 'ervandew/supertab'
Plugin 'vim-scripts/The-NERD-tree'
Plugin 'Valloric/YouCompleteMe'
Plugin 'leafgarland/typescript-vim' 
Plugin 'Quramy/tsuquyomi' 
Plugin 'Shougo/vimproc' 
Plugin 'scrooloose/nerdcommenter' 
"Plugin 'xolox/vim-session' 
Plugin 'glts/vim-cottidie'
Plugin 'google/vim-searchindex'
Plugin 'w0rp/ale'
Plugin 'tpope/vim-surround'
Plugin 'vim-airline/vim-airline'
"Plugin 'bling/vim-buffer-line'
Plugin 'tpope/vim-fugitive'

call vundle#end()            " required
filetype plugin indent on    " required


"Dark theme
"let g:molokai_original = 1
let g:rehash256 = 1
colorscheme molokai


let g:jedi#use_tabs_not_buffers = 1

set nu
set autoindent
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
set cursorline
set guicursor+=n-v-c-i:blinkwait100-blinkon50-blinkoff50
set undofile

au VimEnter * !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
au VimLeave * !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Caps_Lock'


" Tabs
map <C-Tab> gt
map <C-S-Tab> gT
map <C-W> :tabclose<Enter>
noremap <A-Left>  :-tabmove<cr>
noremap <A-Right> :+tabmove<cr>

map <C-Z> :NERDTree<Enter>
noremap <C-Q> <C-W><C-W>

"Copy/paste
vnoremap <C-y> "+y
inoremap <C-p> <C-r><C-p>+
map <C-n> :tabnew<Enter>

"Move line
map <C-Up> :m-2<CR>
map <C-Down> :m+1<CR>

"Comment
map <C-C> <leader>c<space>


autocmd BufEnter * lcd %:p:h
