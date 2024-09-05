return {
    { "windwp/nvim-autopairs", opts = { enable_moveright = false } },
    { "mbbill/undotree", keys = { { "<leader>u", vim.cmd.UndotreeToggle } } },
    { "ThePrimeagen/vim-be-good", cmd = "VimBeGood" },

    { 'Wansmer/treesj',
        keys = {
            { '<space>j', function () require('treesj').toggle() end },
        },
        dependencies = {'nvim-treesitter/nvim-treesitter'},
        opts = {
            use_default_keymaps = false,
        },
    },
}
