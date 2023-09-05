local M = {
  "roobert/action-hints.nvim",
  commit = "08f1dd943b0f495258701362d03c974e5378c971",
  event = "BufReadPre",
  pin = true,
}

M.opts = {
  template = {
    definition = { text = "", color = "#ffffff" },
    references = { text = "  %s", color = "#78a396" },
  },
  use_virtual_text = true,
}

return M
