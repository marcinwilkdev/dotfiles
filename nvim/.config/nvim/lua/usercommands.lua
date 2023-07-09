vim.api.nvim_create_user_command('Binds',
  function ()
    local opts = { noremap = true, silent = true }
    local keymap = vim.api.nvim_buf_set_keymap
    local bufnr = vim.api.nvim_get_current_buf()
    keymap(bufnr, "n", "gc", "<cmd>lua require('cscope_maps').cscope_prompt('c', vim.fn.expand('<cword>'))<CR>", opts)
    keymap(bufnr, "n", "gd", "<cmd>lua require('cscope_maps').cscope_prompt('g', vim.fn.expand('<cword>'))<CR>", opts)
    keymap(bufnr, "n", "gf", "<cmd>lua require('cscope_maps').cscope_prompt('f', vim.fn.expand('<cword>'))<CR>", opts)
    keymap(bufnr, "n", "gr", "<cmd>lua require('cscope_maps').cscope_prompt('s', vim.fn.expand('<cword>'))<CR>", opts)
    keymap(bufnr, "n", "gt", "<cmd>lua require('cscope_maps').cscope_prompt('t', vim.fn.expand('<cword>'))<CR>", opts)
  end,
  {}
)
