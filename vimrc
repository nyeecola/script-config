execute pathogen#infect()

set nocompatible
filetype plugin indent on
colo blue
syntax on

set path+=**

set dir=~/.vim/_swap/

set undofile
set undodir=~/.config/nvim/undo/

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

set smartcase
set updatetime=200
set hlsearch
set incsearch
set nu
set cursorline
set laststatus=2
set backspace=indent,eol,start
set ttyfast
set pastetoggle=<C-J>
set wildmenu

noremap <C-G> <C-]>
noremap g<C-G> g<C-]>
noremap Y y$
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>
nnoremap J :s/.*\zs;//<Enter> J<Enter>
nnoremap <expr> J getline(".")[col("$")-2] == ';' ? ':s/.*\zs;//<Enter>J<Enter>' : 'J<Enter>'
nnoremap <leader>f :retab<CR>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}

cnoremap \<space> tabe **/*

nnoremap \cpp :-1read $HOME/.config/nvim/snippets/cpp<CR>4ja<tab>

let g:netrw_banner=0
let g:netrw_liststyle=3
let g:netrw_altv=1
let g:netrw_browse_split=4
let g:netrw_winsize=20

command WQ wq
command Wq wq
command Wqa wqa
command W w
command Q q
command QA qa
command Qa qa
