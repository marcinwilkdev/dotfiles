vim.api.nvim_set_keymap('n', '<TAB>', [[:bnext<CR>]], { noremap = true })
vim.api.nvim_set_keymap('n', '<S-TAB>', [[:bprevious<CR>]], { noremap = true })

vim.api.nvim_set_keymap('v', '<', [[<gv]], { noremap = true })
vim.api.nvim_set_keymap('v', '>', [[>gv]], { noremap = true })
