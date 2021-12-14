require('settings')
require('mappings')
require('plugins')

require('config.treesitter')
require('config.telescope')

require('config.lsp')
require('config.cmp')
require('config.db')
-- require('config.snippets')

require('lsp.java')
require('lsp.lua')
require('lsp.rust')
require('lsp.bash')

require('themes.gruvbox')
require('themes.airline')

require('config.jdtls_ui')
require('config.commentary')

vim.cmd([[
    augroup jdtls_lsp
        autocmd!
        autocmd FileType java lua require('lsp.java').setup()
    augroup end
]])
