local M = {
  "lukas-reineke/indent-blankline.nvim",
  tag = "v2.20.7",
  event = "BufReadPre",
  pin = true,
}

M.opts = {
  char = "▏",
  show_trailing_blankline_indent = false,
  show_first_indent_level = true,
  use_treesitter = true,
  show_current_context = true,
  buftype_exclude = { "terminal", "nofile" },
  filetype_exclude = {
    "help",
    "packer",
    "NvimTree",
  },
}

return M
