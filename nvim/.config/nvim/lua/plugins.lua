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
    -- Plug 'scrooloose/NERDTree'

    use 'neovim/nvim-lspconfig'
    use 'mfussenegger/nvim-jdtls'

    use 'tjdevries/nlua.nvim'

    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'saadparwaiz1/cmp_luasnip'
    use 'L3MON4D3/LuaSnip'
    use 'onsails/lspkind-nvim'

    use 'jiangmiao/auto-pairs'
    use 'tpope/vim-commentary'
    use { 'kevinhwang91/rnvimr', run = 'make sync' }
    use 'mhinz/vim-startify'

    use 'joshdick/onedark.vim'
    use 'vim-airline/vim-airline'
    use 'vim-airline/vim-airline-themes'
    use 'norcalli/nvim-colorizer.lua'
end)
