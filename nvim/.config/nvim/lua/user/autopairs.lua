local M = {
  "windwp/nvim-autopairs",
  commit = "0e065d423f9cf649e1d92443c939a4b5073b6768",
  event = "InsertEnter",
  dependencies = { "hrsh7th/nvim-cmp" },
  pin = true,
}

M.opts = {
  check_ts = true,   -- treesitter integration
  disable_filetype = { "TelescopePrompt" },
  fast_wrap = {
    map = "<M-e>",
    chars = { "{", "[", "(", '"', "'" },
    pattern = string.gsub([[ [%'%"%)%>%]%)%}%,] ]], "%s+", ""),
    offset = 0,   -- Offset from pattern match
    end_key = "$",
    keys = "qwertyuiopzxcvbnmasdfghjkl",
    check_comma = true,
    highlight = "PmenuSel",
    highlight_grey = "LineNr",
  },
}

function M.config()
  local cmp_autopairs = require("nvim-autopairs.completion.cmp")

  require("cmp").event:on("confirm_done", cmp_autopairs.on_confirm_done {})

  require("nvim-autopairs").setup(M.opts)
end

return M
