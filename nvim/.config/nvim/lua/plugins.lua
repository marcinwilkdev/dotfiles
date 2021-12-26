return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    use 'sheerun/vim-polyglot'

    use { 'nvim-telescope/telescope.nvim',
        requires = {
            { 'nvim-lua/plenary.nvim' },
            { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
        }
    }
    use 'nvim-telescope/telescope-ui-select.nvim'

    use 'neovim/nvim-lspconfig'
    use 'onsails/lspkind-nvim'

    use 'simrat39/rust-tools.nvim'
    use 'tjdevries/nlua.nvim'
    -- use 'mfussenegger/nvim-jdtls'
    
    -- use 'mfussenegger/nvim-dap'

    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'saadparwaiz1/cmp_luasnip'
    use 'L3MON4D3/LuaSnip'

    -- use 'tpope/vim-dadbod'
    -- use 'kristijanhusak/vim-dadbod-ui'

    use {
        'kyazdani42/nvim-tree.lua',
        requires = {
          'kyazdani42/nvim-web-devicons', -- optional, for file icon
        },
        config = function() require'nvim-tree'.setup {} end
    }

    use 'jiangmiao/auto-pairs'
    use 'tpope/vim-commentary'

    use 'gruvbox-community/gruvbox'
    use 'vim-airline/vim-airline'
    use 'vim-airline/vim-airline-themes'
end)
