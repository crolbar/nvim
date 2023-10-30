local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>m', builtin.find_files, {})
vim.keymap.set('n', '<leader>p', builtin.git_files, {})
vim.keymap.set('n', '<leader>/', function()
  require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
    winblend = 10,
    previewer = false,
  })
end)

vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})
