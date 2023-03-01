vim.opt.relativenumber = true
lvim.keys.normal_mode["<S-l>"] = ":BufferLineCycleNext<CR>"
lvim.keys.normal_mode["<S-h>"] = ":BufferLineCyclePrev<CR>"
lvim.builtin.treesitter.auto_install = true

require ("lvim.lsp.null-ls.linters").setup {
  { command = "flake8", filetypes = { "python" } },
}
