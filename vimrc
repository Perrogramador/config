filetype off                  " required
set nocompatible              " be iMproved, required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
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
Plugin 'hsanson/vim-android'
"Plugin 'fatih/vim-go'




" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line




"Dark theme
"let g:molokai_original = 1
let g:rehash256 = 1
colorscheme molokai

" Startup window size
set lines=256 columns=256

let g:jedi#use_tabs_not_buffers = 1

set nu
"set rnu
set tabstop=2
set shiftwidth=2
set expandtab
set cursorline
set guicursor+=n-v-c-i:blinkwait100-blinkon50-blinkoff50


"autocmd FileType ruby setlocal shiftwidth=2 tabstop=2


" FUNCTIONS -------------------------------------------------------------------------------------------------------------------------------------

" MAPS ------------------------------------------------------------------------------------------------------------------------------------------
noremap <Up>    <Nop>
noremap <Down>  <Nop>
noremap <Left>  <Nop>
noremap <Right> <Nop>

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
vnoremap <C-y> "*y
inoremap <C-p> <C-r><C-p>+
map <C-n> :tabnew<Enter>
"Move line
map <C-Up> :m-2<CR>
map <C-Down> :m+1<CR>
"Comment
map <C-C> <leader>c<space>

autocmd BufEnter * lcd %:p:h
