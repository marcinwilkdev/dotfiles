local M = {
  url = "https://github.com/marcinwilkdev/cscope_maps.nvim",
  commit = "47a885c96b80056153d0887a74b5db0f7c6c3346",
  ft = { "c", "cs" },
  pin = true,
}

M.opts = {
  disable_maps = true,
  skip_input_prompt = true,

  cscope = {
    skip_picker_for_single_result = true,
    picker = "telescope",
  }
}

function M.config()
  local opts = { noremap = true, silent = true }
  local keymap = vim.api.nvim_buf_set_keymap
  local bufnr = vim.api.nvim_get_current_buf()
  keymap(bufnr, "n", "gc", "<cmd>lua require('cscope_maps').cscope_prompt('c', vim.fn.expand('<cword>'))<CR>", opts)
  keymap(bufnr, "n", "gd", "<cmd>lua require('cscope_maps').cscope_prompt('g', vim.fn.expand('<cword>'))<CR>", opts)
  keymap(bufnr, "n", "gf", "<cmd>lua require('cscope_maps').cscope_prompt('f', vim.fn.expand('<cword>'))<CR>", opts)
  keymap(bufnr, "n", "gr", "<cmd>lua require('cscope_maps').cscope_prompt('s', vim.fn.expand('<cword>'))<CR>", opts)
  keymap(bufnr, "n", "gt", "<cmd>lua require('cscope_maps').cscope_prompt('t', vim.fn.expand('<cword>'))<CR>", opts)

  require("cscope_maps").setup(M.opts)
end

return M
