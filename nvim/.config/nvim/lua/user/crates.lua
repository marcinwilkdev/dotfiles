local M = {
  "saecki/crates.nvim",
  tag = "v0.3.0",
  event = "BufReadPre",
}

function M.config()
  require("crates").setup {
    null_ls = {
      enabled = true,
      name = "crates.nvim",
    }
  }
end

return M
