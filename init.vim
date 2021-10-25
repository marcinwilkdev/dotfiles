set path+=**

set wildmode=longest,list,full
set wildmenu

set wildignore+=**/node_modules/*

command! MakeTags !ctags -R .

set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

set exrc
set relativenumber
set nu

set nohlsearch
set hidden
set noerrorbells

set nowrap
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile

set incsearch
set scrolloff=8
set colorcolumn=80
set signcolumn=yes

call plug#begin()
Plug 'gruvbox-community/gruvbox'

Plug 'ycm-core/YouCompleteMe'

Plug 'nvim-treesitter/nvim-treesitter', {'do': 'TSUpdate'}
Plug 'nvim-treesitter/playground'

Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
call plug#end()

colorscheme gruvbox
highlight Normal guibg=none

let mapleader = " "

fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

augroup MARCIN
    autocmd!
    autocmd BufWritePre * :call TrimWhitespace()
augroup END

nmap ss :split<Return><C-w>w
nmap sv :vsplit<Return><C-w>w

nmap sh <C-w>h
nmap sl <C-w>l
nmap sj <C-w>j
nmap sk <C-w>k
