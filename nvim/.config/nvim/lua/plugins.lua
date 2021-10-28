return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    use 'sheerun/vim-polyglot'

    -- Plug 'scrooloose/NERDTree'
    -- Plug 'nvim-lua/plenary.nvim'
    -- Plug 'nvim-telescope/telescope.nvim'
    -- Plug 'nvim-telescope/telescope-fzy-native.nvim'

    use 'neovim/nvim-lspconfig'
    use 'mfussenegger/nvim-jdtls'

    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'saadparwaiz1/cmp_luasnip'
    use 'L3MON4D3/LuaSnip'

    use 'jiangmiao/auto-pairs'
    use 'tpope/vim-commentary'
    use { 'kevinhwang91/rnvimr', run = 'make sync' }
    use 'mhinz/vim-startify'

    use 'joshdick/onedark.vim'
    use 'vim-airline/vim-airline'
    use 'vim-airline/vim-airline-themes'
    use 'norcalli/nvim-colorizer.lua'
end)
