require("harpoon").setup()
require("telescope").load_extension('harpoon')

vim.keymap.set('n', 't', ":Telescope harpoon marks<CR>")

vim.keymap.set('n', '<leader>a', require("harpoon.mark").add_file)
vim.keymap.set('n', '<leader>r', require("harpoon.mark").rm_file)

vim.keymap.set('n', '<leader>,', require("harpoon.ui").nav_next)
vim.keymap.set('n', '<leader>.', require("harpoon.ui").nav_prev)
