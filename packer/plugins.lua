return require('packer').startup(function(use)
    use('wbthomason/packer.nvim')
    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
    use('mbbill/undotree')
    use('tpope/vim-fugitive')
    use('numToStr/Comment.nvim')
    use('norcalli/nvim-colorizer.lua')
    use('akinsho/toggleterm.nvim')
    use('lewis6991/gitsigns.nvim')
    use('ThePrimeagen/harpoon')

    use('andweeb/presence.nvim')
    use("EdenEast/nightfox.nvim")
    use("nvim-lualine/lualine.nvim")
    use('neovim/nvim-lspconfig')

    use('hrsh7th/nvim-cmp')
    use('hrsh7th/cmp-nvim-lsp')
    use('saadparwaiz1/cmp_luasnip')
    use('L3MON4D3/LuaSnip')

    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup() end
    }

    use {
       'nvim-telescope/telescope.nvim', tag = '0.1.4',
        requires = { 'nvim-lua/plenary.nvim' }
    }

    use {
        'nvim-tree/nvim-tree.lua',
        requires = { 'nvim-tree/nvim-web-devicons' },
    }
end)
