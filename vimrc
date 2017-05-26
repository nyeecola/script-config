set encoding=utf-8
execute pathogen#infect()

set nocompatible
filetype plugin indent on
syntax on

set clipboard=unnamedplus
set ffs=unix

set path+=**

set dir=~/.vim/_swap/

set undofile
set undodir=~/.config/nvim/undo/

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

set nowrap
set cursorline
set smartcase
set hlsearch
set incsearch
set nu
set laststatus=2
set backspace=indent,eol,start
set pastetoggle=<C-J>
set wildmenu

noremap <C-G> <C-]>
noremap g<C-G> g<C-]>
noremap Y y$
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>
nnoremap <leader>f :retab<CR>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}

cnoremap \<space> tabe **/*

nnoremap \cpp :-1read $HOME/.config/nvim/snippets/cpp<CR>4ja<tab>

nnoremap \m :!make<CR>
nnoremap \<space> :%s/\s\+$//e<CR>

let g:netrw_banner=0
let g:netrw_liststyle=3
let g:netrw_altv=1
"let g:netrw_browse_split=4
"let g:netrw_winsize=15

colo dracula
hi Search cterm=none ctermfg=black ctermbg=LightYellow
