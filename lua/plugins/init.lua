return {
    {"windwp/nvim-autopairs", opts = {enable_moveright = false}},
    {"mbbill/undotree", keys = {{"<leader>u", vim.cmd.UndotreeToggle}}},
    {"ThePrimeagen/vim-be-good", cmd = "VimBeGood"},
    { 'Wansmer/treesj',
        keys = {
            {'<space>j', function () require('treesj').toggle() end},
            {'<space>rj', function () require('treesj').toggle({split = {recursive = true}}) end},
        },
        dependencies = {'nvim-treesitter/nvim-treesitter'},
        opts = {
            use_default_keymaps = false,
            max_join_length = 1200,
        },
    },
    {"kylechui/nvim-surround", keys = {'ys', 'cs', 'ds', {'S', mode = 'v'}}, opts = {}},
}
