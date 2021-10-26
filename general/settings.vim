let g:mapleader = " "

syntax enable
set hidden
set nowrap
set encoding=utf-8
set pumheight=10
set fileencoding=utf-8
set ruler
set cmdheight=2
set iskeyword+=-
set splitbelow
set splitright
set t_Co=256
set conceallevel=0
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab
set expandtab
set smartindent
set autoindent
set laststatus=0
set number
set cursorline
set background=dark
set showtabline=2
set nobackup
set nowritebackup
set updatetime=300
set timeoutlen=500
set formatoptions-=cro
set clipboard=unnamedplus
set autochdir

au! BufWritePost $MYVIMRC source %
