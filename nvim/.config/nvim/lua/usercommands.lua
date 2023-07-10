vim.api.nvim_create_user_command("Binds",
  require("helpers").create_cscope_key_mappings,
  {}
)
