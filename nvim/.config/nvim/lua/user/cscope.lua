local M = {
  url = "https://github.com/marcinwilkdev/cscope_maps.nvim",
  commit = "47a885c96b80056153d0887a74b5db0f7c6c3346",
  event = "BufReadPre",
  pin = true,
}

M.opts = {
  disable_maps = true,
  skip_input_prompt = true,

  cscope = {
    skip_picker_for_single_result = true,
    picker = "telescope",
  }
}

function M.config()
  require("cscope_maps").setup(M.opts)
end

return M
