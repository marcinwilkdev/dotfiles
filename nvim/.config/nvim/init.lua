require('settings')
require('mappings')
require('plugins')
require('treesitter-config')
require('lsp-config')

require('java-lsp')
require('lua-lsp')

-- require('jdtls_ui-config') need telescope
require('rnvimr-config')

require('onedark-config')
require('airline-config')
require('colorizer-config')

vim.api.nvim_set_keymap('n', '<A-CR>', [[<Cmd>lua require('jdtls').code_action()<CR>]], { noremap = true })
vim.api.nvim_set_keymap('n', 'K', [[<cmd>lua vim.lsp.buf.hover()<CR>]], { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<space>/', [[:Commentary<CR>]], { noremap = true })
vim.api.nvim_set_keymap('v', '<space>/', [[:Commentary<CR>]], { noremap = true })

vim.cmd([[
    augroup packer_user_config
       autocmd!
       autocmd BufWritePost plugins.lua source <afile> | PackerCompile
    augroup end
]])

vim.cmd([[
    augroup jdtls_lsp
        autocmd!
        autocmd FileType java lua require('java-lsp').setup()
    augroup end
    ]])
