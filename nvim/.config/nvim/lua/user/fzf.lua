local M = {
  "junegunn/fzf.vim",
  commit = "811f34b70b60b4df2997e3ba8cd109e7d06d683b",
  event = "Bufenter",
  dependencies = {
    {
      "junegunn/fzf",
      name = "fzf",
      dir = "~/.fzf",
      build = "./install --all",
      commit = "2c74f0a0405bc4d394063bb66f8c6dfd5fe750fa",
    },
  },
  pin = true,
}

return M
