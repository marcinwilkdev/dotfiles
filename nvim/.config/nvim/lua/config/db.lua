vim.api.nvim_set_keymap('n', '<leader>du', [[:DBUIToggle<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>df', [[:DBUIFindBuffer<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>dr', [[:DBUIRenameBuffer<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>dl', [[:DBUILastQueryInfo<CR>]], { noremap = true, silent = true })

vim.cmd([[
    let g:db_ui_save_location = '~/.config/db_ui'
]])
