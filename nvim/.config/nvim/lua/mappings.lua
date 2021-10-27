vim.api.nvim_set_keymap('i', '<c-j>', [[("\<C-n>")]], { expr = true })
vim.api.nvim_set_keymap('i', '<c-k>', [[("\<C-p>")]], { expr = true })

vim.api.nvim_set_keymap('n', '<M-j>', [[:resize -2<CR>]], { noremap = true })
vim.api.nvim_set_keymap('n', '<M-k>', [[:resize +2<CR>]], { noremap = true })
vim.api.nvim_set_keymap('n', '<M-h>', [[:vertical resize -2<CR>]], { noremap = true })
vim.api.nvim_set_keymap('n', '<M-l>', [[:vertical resize +2<CR>]], { noremap = true })

vim.api.nvim_set_keymap('i', '<c-u>', [[<Esc>viwUi]], { noremap = true })
vim.api.nvim_set_keymap('i', '<c-u>', [[viwU<Esc>]], { noremap = true })

vim.api.nvim_set_keymap('n', '<TAB>', [[:bnext<CR>]], { noremap = true })
vim.api.nvim_set_keymap('n', '<S-TAB>', [[:bprevious<CR>]], { noremap = true })

vim.api.nvim_set_keymap('i', '<expr><TAB>', [[pumvisible() ? "\<C-n>" : "\<TAB>"]], { noremap = true })

vim.api.nvim_set_keymap('v', '<', [[<gv]], { noremap = true })
vim.api.nvim_set_keymap('v', '>', [[>gv]], { noremap = true })

vim.api.nvim_set_keymap('n', '<C-h>', [[<C-w>h]], { noremap = true })
vim.api.nvim_set_keymap('n', '<C-j>', [[<C-w>j]], { noremap = true })
vim.api.nvim_set_keymap('n', '<C-k>', [[<C-w>k]], { noremap = true })
vim.api.nvim_set_keymap('n', '<C-l>', [[<C-w>l]], { noremap = true })

vim.api.nvim_set_keymap('n', '<Leader>o', [[o<Esc>^Da]], { noremap = true })
vim.api.nvim_set_keymap('n', '<Leader>O', [[O<Esc>^Da]], { noremap = true })
