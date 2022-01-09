vim.api.nvim_set_keymap('n', '<leader>e', [[:NvimTreeToggle<CR>]], { noremap = true })

require("nvim-tree").setup({
  update_cwd = true,
  update_focused_file = {
    enable = true,
    update_cwd = true
  },
})

