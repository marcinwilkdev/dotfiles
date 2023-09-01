local M = {
  "nvimdev/dashboard-nvim",
  event = "VimEnter",
  commit = "2caf39ffe2b51bdcf28528473b51042760e888f3",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  pin = true,
}

M.opts = {
  theme = 'hyper',
  config = {
    week_header = {
      enable = true,
    },
    shortcut = {
      { desc = ' New file', group = '@property', action = 'ene <BAR> startinsert ', key = 'n' },
      {
        desc = ' Files',
        group = 'Label',
        action = 'Files',
        key = 'f',
      },
      {
        desc = ' Text',
        group = 'Label',
        action = ':RG',
        key = 't',
      },
      {
        desc = ' Config',
        group = 'Number',
        action = 'e $MYVIMRC',
        key = 'c',
      },
      {
        desc = ' Quit',
        group = 'Number',
        action = 'qa',
        key = 'q',
      },
    },
    project = { enable = false },
    mru = { limit = 10, icon = '󰄉 ', label = 'Recent files', action = 'History' },
    footer = {},
  },
}

return M
