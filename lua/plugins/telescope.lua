return {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    keys = function ()
        local builtin = require('telescope.builtin')

        return {
            { '<C-t>', builtin.find_files, { noremap = false }},
            { '<M-b>', builtin.buffers},
            { '<leader>sw', builtin.lsp_definitions},
            { '<leader>g', builtin.git_files},
            { '<leader>/', function()
                builtin.current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
                    winblend = 10,
                    previewer = false,
                })
            end},


            {'<leader>vh', builtin.help_tags},
            {'gd', builtin.lsp_definitions},
            {'gr', builtin.lsp_references},
            {'gI', builtin.lsp_implementations},
            {'<leader>D', builtin.lsp_type_definitions},
            {'<leader>ds', builtin.lsp_document_symbols},
            {'<leader>ws', builtin.lsp_dynamic_workspace_symbols},
        }
    end,
    opts = {
        defaults = { -- https://github.com/freddiehaddad/nvim/blob/main/lua/plugins/telescope.lua
            borderchars = { '─', '│', '─', '│', '┌', '┐', '┘', '└', },
            mappings = {
                i = {
                    ['<c-h>'] = 'select_horizontal',
                    ['<c-x>'] = 'which_key',
                },
            },
        },
    },
}
