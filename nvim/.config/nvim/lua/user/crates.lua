local M = {
  "saecki/crates.nvim",
  commit = "4ce7c51b881e58f1e2f8f437f30e4e583cbac319",
  event = "BufRead Cargo.toml",
  dependencies = { "nvim-lua/plenary.nvim" },
  pin = true,
}

M.opts = {
  null_ls = {
    enabled = true,
    name = "crates.nvim",
  }
}

return M
