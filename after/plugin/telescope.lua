local builtin = require('telescope.builtin')

vim.keymap.set('n', '<C-t>', builtin.find_files, { noremap = false })
vim.keymap.set('n', '<leader>sw', builtin.lsp_definitions, {})
vim.keymap.set('n', '<leader>p', builtin.git_files, {})
vim.keymap.set('n', '<leader>/', function()
    require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
        winblend = 10,
        previewer = false,
    })
end)


vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})
local nmap = function(keys, func, desc)
    if desc then
        desc = 'LSP: ' .. desc
    end

    vim.keymap.set('n', keys, func, { desc = desc })
end


nmap('gd', builtin.lsp_definitions, '[G]oto [D]efinition')
nmap('gr', builtin.lsp_references, '[G]oto [R]eferences')
nmap('gI', builtin.lsp_implementations, '[G]oto [I]mplementation')
nmap('<leader>D', builtin.lsp_type_definitions, 'Type [D]efinition')
nmap('<leader>ds', builtin.lsp_document_symbols, '[D]ocument [S]ymbols')
nmap('<leader>ws', builtin.lsp_dynamic_workspace_symbols, '[W]orkspace [S]ymbols')
