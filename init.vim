source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/keys/mappings.vim
source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/themes/onedark.vim
source $HOME/.config/nvim/themes/airline.vim
source $HOME/.config/nvim/plug-config/coc.vim
source $HOME/.config/nvim/plug-config/rnvimr.vim
lua require'plug-colorizer'

nnoremap <space>/ :Commentary<CR>
vnoremap <space>/ :Commentary<CR>

set path+=**

set wildmode=longest,list,full
set wildmenu

set wildignore+=**/node_modules/*

set exrc
set relativenumber
set nu

set nohlsearch
set noerrorbells

set undodir=~/.vim/undodir
set undofile

set incsearch
set scrolloff=8
set colorcolumn=90
set signcolumn=yes

nmap ss :split<Return><C-w>w
nmap sv :vsplit<Return><C-w>w

let mapleader = " "

command! MakeTags !ctags -R .

lua <<EOF
require'nvim-treesitter.configs'.setup {
    ensure_installed = "maintained",
    highlight = {
        enable = true,
    },
}
EOF
