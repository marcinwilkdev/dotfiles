local M = {
  "iamcco/markdown-preview.nvim",
  tag = "v0.0.10",
  ft = { "markdown" },
  build = "cd app && npm install"
}

function M.config()
  vim.g.mkdp_filetypes = { "markdown" }
end

return M
