require("nvim-tree").setup{
    filters = { custom = { "^.git$" } },
    view = {
        width = 30
    }
}
vim.api.nvim_set_keymap('n', '<leader>t', ':NvimTreeToggle<CR>', { silent = true})
vim.api.nvim_set_keymap('n', '<leader>f', ':NvimTreeFocus<CR>', { silent = true})

