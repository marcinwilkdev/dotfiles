M = {
  "dhananjaylatkar/cscope_maps.nvim",
  commit = "46b22d441bd9aae0d46c7ed2d250e5c79d7e8be8",
  event = "VimEnter",
}

M.opts = {
  disable_maps = true,
  skip_input_prompt = true,

  cscope = {
    skip_picker_for_single_result = true,
    picker = "telescope",
  }
}

return M
