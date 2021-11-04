require('settings')
require('mappings')
require('plugins')

require('config.treesitter')
require('config.telescope')

require('config.lsp')
require('config.cmp')
require('config.snippets')

require('lsp.java')
require('lsp.lua')
require('lsp.rust')

require('themes.onedark')
require('themes.airline')

-- require('config.colorizer')
require('config.jdtls_ui')

vim.api.nvim_set_keymap('n', '<A-CR>', [[<Cmd>lua require('jdtls').code_action()<CR>]], { noremap = true })

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
        autocmd FileType java lua require('lsp.java').setup()
    augroup end
]])
