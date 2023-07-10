local M = {
  "ellisonleao/gruvbox.nvim",
  name = "gruvbox",
  tag = "1.0.0",
  lazy = false,    -- make sure we load this during startup if it is your main colorscheme
  priority = 1000, -- make sure to load this before all the other start plugins
  pin = true,
}

vim.o.background = "dark"

function M.config()
  local status_ok, _ = pcall(vim.cmd.colorscheme, M.name)
  if not status_ok then
    return
  end
end

return M
