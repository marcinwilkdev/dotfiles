return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    -- treesitter
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    use 'sheerun/vim-polyglot'

    -- telescope
    use { 'nvim-telescope/telescope.nvim',
        requires = {
            { 'nvim-lua/plenary.nvim' },
            { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
        }
    }
    use 'nvim-telescope/telescope-ui-select.nvim'

    -- lsp
    use 'neovim/nvim-lspconfig'
    use 'onsails/lspkind-nvim'
    use 'simrat39/rust-tools.nvim'
    use 'mfussenegger/nvim-jdtls'

    -- autocomplete + snippets
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'saadparwaiz1/cmp_luasnip'
    use 'L3MON4D3/LuaSnip'

    -- workspace
    use 'kyazdani42/nvim-tree.lua'
    use "ahmedkhalf/project.nvim"

    -- git
    use "tpope/vim-fugitive"
    use 'lewis6991/gitsigns.nvim'

    -- other
    use 'tpope/vim-commentary'
    use 'jiangmiao/auto-pairs'

    -- styling
    use 'kyazdani42/nvim-web-devicons'
    use 'gruvbox-community/gruvbox'
    use 'vim-airline/vim-airline'
    use 'vim-airline/vim-airline-themes'
end)
