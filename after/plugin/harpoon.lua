require("harpoon").setup()
require("telescope").load_extension('harpoon')

vim.keymap.set('n', '<leader>n', ":Telescope harpoon marks<CR>")

vim.keymap.set('n', '<leader>j', require("harpoon.mark").add_file)
vim.keymap.set('n', '<leader>k', require("harpoon.mark").rm_file)

vim.keymap.set('n', '<leader>,', require("harpoon.ui").nav_next)
vim.keymap.set('n', '<leader>.', require("harpoon.ui").nav_prev)
