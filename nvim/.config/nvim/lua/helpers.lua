M = {
  cscope_keymaps = function()
    local opts = { noremap = true, silent = true }
    local keymap = vim.api.nvim_buf_set_keymap
    local bufnr = vim.api.nvim_get_current_buf()
    keymap(bufnr, "n", "gc", "<cmd>lua require('cscope_maps').cscope_prompt('c', vim.fn.expand('<cword>'))<CR>", opts)
    keymap(bufnr, "n", "gd", "<cmd>lua require('cscope_maps').cscope_prompt('g', vim.fn.expand('<cword>'))<CR>", opts)
    keymap(bufnr, "n", "gf", "<cmd>lua require('cscope_maps').cscope_prompt('f', vim.fn.expand('<cword>'))<CR>", opts)
    keymap(bufnr, "n", "gr", "<cmd>lua require('cscope_maps').cscope_prompt('s', vim.fn.expand('<cword>'))<CR>", opts)
    keymap(bufnr, "n", "gt", "<cmd>lua require('cscope_maps').cscope_prompt('t', vim.fn.expand('<cword>'))<CR>", opts)
  end,

  lsp_keymaps = function(bufnr)
    local opts = { noremap = true, silent = true }
    local keymap = vim.api.nvim_buf_set_keymap
    keymap(bufnr, "n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
    keymap(bufnr, "n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
    keymap(bufnr, "n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
    keymap(bufnr, "n", "gI", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
    keymap(bufnr, "n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
    keymap(bufnr, "n", "gl", "<cmd>lua vim.diagnostic.open_float()<CR>", opts)
    keymap(bufnr, "n", "<leader>li", "<cmd>LspInfo<cr>", opts)
    keymap(bufnr, "n", "<leader>lI", "<cmd>Mason<cr>", opts)
    keymap(bufnr, "n", "<leader>la", "<cmd>lua vim.lsp.buf.code_action()<cr>", opts)
    keymap(bufnr, "n", "<leader>lj", "<cmd>lua vim.diagnostic.goto_next({buffer=0})<cr>", opts)
    keymap(bufnr, "n", "<leader>lk", "<cmd>lua vim.diagnostic.goto_prev({buffer=0})<cr>", opts)
    keymap(bufnr, "n", "<leader>lr", "<cmd>lua vim.lsp.buf.rename()<cr>", opts)
    keymap(bufnr, "n", "<leader>ls", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opts)
    keymap(bufnr, "n", "<leader>lq", "<cmd>lua vim.diagnostic.setloclist()<CR>", opts)
  end
}

return M
