local M = {
  "simrat39/rust-tools.nvim",
  commit = "71d2cf67b5ed120a0e31b2c8adb210dd2834242f",
  event = "BufReadPre",
}

function M.config()
  require("rust-tools").setup {
    server = {
      on_attach = function(_, bufnr)
        require("helpers").lsp_keymaps(bufnr)
      end,
    }
  }
end

return M
