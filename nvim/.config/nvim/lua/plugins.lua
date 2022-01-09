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

    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'saadparwaiz1/cmp_luasnip'
    use 'L3MON4D3/LuaSnip'

    use {
        'kyazdani42/nvim-tree.lua',
        requires = {
          'kyazdani42/nvim-web-devicons', -- optional, for file icon
        },
    }

    use "ahmedkhalf/project.nvim"

    use "tpope/vim-fugitive"
    use {
      'lewis6991/gitsigns.nvim',
      requires = {
        'nvim-lua/plenary.nvim'
      },
    }

    use 'jiangmiao/auto-pairs'
    use 'tpope/vim-commentary'

    use 'gruvbox-community/gruvbox'
    use 'vim-airline/vim-airline'
    use 'vim-airline/vim-airline-themes'
end)
