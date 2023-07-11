local M = {
  "ggandor/leap.nvim",
  commit = "8facf2eb6a378fd7691dce8c8a7b2726823e2408",
  lazy = false,
  pin = true,
}

function M.config()
  require("leap").add_default_mappings()
end

return M
