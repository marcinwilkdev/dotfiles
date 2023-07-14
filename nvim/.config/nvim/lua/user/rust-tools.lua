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

function M.config()
  local codelldb_path = vim.fn.stdpath("data") .. "/dapinstall/codelldb/extension/adapter/codelldb"
  local liblldb_path = vim.fn.stdpath("data") .. "/dapinstall/codelldb/extension/lldb/lib/liblldb.so"

  M.opts.dap = {
    adapter = require("rust-tools.dap").get_codelldb_adapter(codelldb_path, liblldb_path)
  }

  require("rust-tools").setup(M.opts)
end

return M
