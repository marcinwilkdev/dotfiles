local M = {
  "karb94/neoscroll.nvim",
  commit = "d7601c26c8a183fa8994ed339e70c2d841253e93",
  event = "BufReadPre",
  pin = true,
}

function M.config()
  require("neoscroll").setup()
end

return M
