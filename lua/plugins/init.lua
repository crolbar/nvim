return {
    { "windwp/nvim-autopairs", opts = {} },
    {
        "iamcco/markdown-preview.nvim",
        cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
        ft = { "markdown" },
        build = function() vim.fn["mkdp#util#install"]() end,
    },
    {
        "mbbill/undotree",
        keys = {
            { "<leader>u", vim.cmd.UndotreeToggle }
        }
    },
    { "ThePrimeagen/vim-be-good", cmd = "VimBeGood" }
}
