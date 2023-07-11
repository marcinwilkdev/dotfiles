local M = {
  "nvim-treesitter/nvim-treesitter",
  commit = "226c1475a46a2ef6d840af9caa0117a439465500",
  event = "BufReadPost",
  dependencies = {
    { "nvim-tree/nvim-web-devicons" },
    {
      "JoosepAlviste/nvim-ts-context-commentstring",
      event = "VeryLazy",
      commit = "729d83ecb990dc2b30272833c213cc6d49ed5214",
      pin = true,
    },
  },
  pin = true,
}

M.opts = {
  ensure_installed = { "lua", "markdown", "markdown_inline", "bash", "python" }, -- put the language you want in this array
  -- ensure_installed = "all", -- one of "all" or a list of languages
  ignore_install = { "" },                                                       -- List of parsers to ignore installing
  sync_install = false,                                                          -- install languages synchronously (only applied to `ensure_installed`)

  highlight = {
    enable = true,       -- false will disable the whole extension
    disable = { "css" }, -- list of language that will be disabled
  },
  autopairs = {
    enable = true,
  },
  indent = { enable = true, disable = { "python", "css" } },

  context_commentstring = {
    enable = true,
    enable_autocmd = false,
  },
}

function M.config()
  require("nvim-treesitter.configs").setup(M.opts)
end

return M
