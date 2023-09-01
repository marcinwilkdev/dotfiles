local M = {
  "windwp/nvim-autopairs",
  commit = "0e065d423f9cf649e1d92443c939a4b5073b6768",
  event = "InsertEnter",
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

return M
