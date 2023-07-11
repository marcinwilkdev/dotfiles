local M = {
  "simrat39/rust-tools.nvim",
  commit = "71d2cf67b5ed120a0e31b2c8adb210dd2834242f",
  event = "BufReadPre",
  pin = true,
}

M.opts = {
  server = {
    on_attach = function(_, bufnr)
      require("keymaps").lsp_keymaps(bufnr)
    end,
  }
}

return M
