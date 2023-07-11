local M = {
  "ahmedkhalf/project.nvim",
  commit = "685bc8e3890d2feb07ccf919522c97f7d33b94e4",
  dependencies = { "nvim-telescope/telescope.nvim" },
  pin = true,
}

M.opts = {
  manual_mode = true,
  detection_methods = { "pattern" },
  patterns = { ".git", "Makefile", "package.json" },
}

function M.config()
  require("project_nvim").setup(M.opts)
  require("telescope").load_extension("projects")
end

return M
