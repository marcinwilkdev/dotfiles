local M = {
  "williamboman/mason.nvim",
  tag = "v1.6.0",
  cmd = "Mason",
  event = "VimEnter",
  dependencies = {
    {
      "williamboman/mason-lspconfig.nvim",
      tag = "v1.11.0",
      lazy = true,
      pin = true,
    },
  },
  pin = true,
}

M.opts = {
  ui = {
    border = "none",
    icons = {
      package_installed = "◍",
      package_pending = "◍",
      package_uninstalled = "◍",
    },
  },
  log_level = vim.log.levels.INFO,
  max_concurrent_installers = 4,
}

function M.config()
  require("mason").setup(M.opts)
  require("mason-lspconfig").setup {
    ensure_installed = require("utils").servers,
    automatic_installation = false,
  }
end

return M
