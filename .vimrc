" setting leader to space
let mapleader=" "

" colors
syntax on
set background=dark
let g:gruvbox_undercurl=0 " disable underlines
colorscheme gruvbox

" easier typing of diacritics
set digraph
nnoremap <leader>' s<c-r>"<bs>'<esc>
nnoremap <leader>` s<c-r>"<bs>`<esc>
nnoremap <leader>^ s<c-r>"<bs>^<esc>
 
" line numbers
set number
set relativenumber

set ruler
set wildmenu

" making indent two
set shiftwidth=2 " indenting with > or <
set tabstop=2 " number of spaces that a tab counts for
set expandtab " tabs act as spaces

set colorcolumn=80

" move between tabs (multiple files)
nnoremap <F7> :tabp <cr>
nnoremap <F8> :tabn <cr>

" searching
set incsearch " search as characters are entered
set hlsearch " highlight matches 

" stops highlighting the searches
nnoremap <leader>n :nohlsearch<cr>

" moves vertically by 1 line even if it wraps around
nnoremap j gj
nnoremap k gk

" move entire line down / up
nnoremap - ddp
nnoremap _ ddkP

" opening and sourcing my vimrc file with a shortcut
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :so $MYVIMRC<cr>

" StandardEbooks and Books folder uses tabs, not spaces
autocmd BufRead,BufNewFile ~/Projects/StandardEbooks/* setlocal noexpandtab
autocmd BufRead,BufNewFile ~/Projects/Books/* setlocal noexpandtab

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
Plugin 'morhetz/gruvbox'

" UltiSnips settings
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/UltiSnips']

" All of your Plugins must be added before the following line
call vundle#end()           
filetype plugin indent on
