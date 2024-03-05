return require('packer').startup(function(use)
    use('wbthomason/packer.nvim')
    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
    use('mbbill/undotree')
    use('tpope/vim-fugitive')
    use('numToStr/Comment.nvim')
    use('norcalli/nvim-colorizer.lua')
    use('akinsho/toggleterm.nvim')
    use('lewis6991/gitsigns.nvim')
    use("nvim-lua/plenary.nvim")
    use {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        requires = { {"nvim-lua/plenary.nvim"} }
    }
    use('iamcco/markdown-preview.nvim')
    use('Pocco81/true-zen.nvim')

    use('andweeb/presence.nvim')
    use("EdenEast/nightfox.nvim")
    use("nvim-lualine/lualine.nvim")
    use('neovim/nvim-lspconfig')

    use('hrsh7th/nvim-cmp')
    use('hrsh7th/cmp-nvim-lsp')
    use('hrsh7th/cmp-buffer')
    use('L3MON4D3/LuaSnip')

    use('ggandor/leap.nvim')
    use{'smoka7/hop.nvim', tag = '*'}

    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup() end
    }

    use('lukas-reineke/indent-blankline.nvim')

    use {
       'nvim-telescope/telescope.nvim', tag = '0.1.4',
        requires = { 'nvim-lua/plenary.nvim' }
    }

    use {
        'nvim-tree/nvim-tree.lua',
        requires = { 'nvim-tree/nvim-web-devicons' },
    }
end)
