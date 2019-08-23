syntax on
set background=dark

" Setting leader to space
let mapleader=" "

colorscheme gruvbox

set number
set wildmenu

" making indent two
    
set shiftwidth=2 " indenting with > or <
set tabstop=2 " number of spaces that a tab counts for
set expandtab " tabs act as spaces

set colorcolumn=72

" move between tabs (multiple files)
noremap <F7> :tabp <CR>
noremap <F8> :tabn <CR>

" searching
set incsearch " search as characters are entered
set hlsearch " highlight matches 

" stops highlighting the searches
nnoremap <leader>n :nohlsearch<CR>

" moves vertically by 1 line even if it wraps around
nnoremap j gj
nnoremap k gk

" move entire line down / up
nnoremap - ddp
nnoremap _ ddkP

" opening and sourcing my vimrc file with a shortcut
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :so $MYVIMRC<cr>

" my common misspellings
iabbrev lenght length

" Vundle
set nocompatible              " be iMproved, required
filetype off   

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'SirVer/ultisnips'

let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" All of your Plugins must be added before the following line
call vundle#end()           
filetype plugin indent on    
