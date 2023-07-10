vim.api.nvim_create_user_command("Binds",
  require("helpers").cscope_keymaps,
  {}
)
