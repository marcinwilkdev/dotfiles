local M = {
  "OmniSharp/omnisharp-vim",
  commit = "9c12ecc93d9a65d698523b24fd32fad385015bbb",
  event = "BufReadPre",
  pin = true,
}

vim.g.OmniSharp_server_use_net6 = 1
vim.g.OmniSharp_selector_findusages = 'fzf'

return M
