require("nvim-tree").setup({
  view = {
    width = 25,
  },
})

vim.api.nvim_set_keymap('n', '<leader>t', ':NvimTreeToggle<CR>', { silent = true})
vim.api.nvim_set_keymap('n', '<leader>f', ':NvimTreeFocus<CR>', { silent = true})

