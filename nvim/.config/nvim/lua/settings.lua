vim.cmd([[syntax enable]])

table.insert(vim.opt.path, '**')
vim.opt.wildmode = 'longest,list,full'
vim.opt.wildmenu = true
table.insert(vim.opt.wildignore, '**/node_modules/*')

vim.opt.exrc = true
vim.opt.relativenumber = true
vim.opt.nu = true
vim.opt.hlsearch = false
vim.opt.errorbells = false
vim.opt.incsearch = true
vim.opt.scrolloff = 8
vim.opt.colorcolumn = '80'
vim.opt.signcolumn = 'yes'

vim.g.mapleader = ' '

vim.opt.hidden = true
vim.opt.wrap = false
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'
vim.opt.pumheight = 10
vim.opt.ruler = true
vim.opt.cmdheight = 2
table.insert(vim.opt.iskeyword, '-')
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.conceallevel = 0
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.smarttab = true
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.laststatus = 0
vim.opt.number = true
vim.opt.cursorline = true
vim.opt.background = 'dark'
vim.opt.showtabline = 2
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.updatetime = 300
vim.opt.timeoutlen = 500
vim.opt.clipboard = 'unnamedplus'

vim.cmd('au! BufWritePost $MYVIMRC source %')
