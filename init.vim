set nocompatible

syntax enable
filetype plugin on

set path+=**
set wildmenu

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
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
call plug#end()

colorscheme gruvbox
highlight Normal guibg=none

let mapleader = " "
nnoremap <leader>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<CR>

fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

augroup MARCIN
    autocmd!
    autocmd BufWritePre * :call TrimWhitespace()
augroup END
