return {
    'nvim-tree/nvim-tree.lua',
    dependencies = {
        "nvim-tree/nvim-web-devicons"
    },
    opts = {
        on_attach = function(bufnr)
            local api = require('nvim-tree.api');

            api.config.mappings.default_on_attach(bufnr)
            vim.keymap.del('n', 'f', { buffer = bufnr })
            vim.keymap.del('n', '<C-t>', { buffer = bufnr })
            vim.keymap.del('n', '-', { buffer = bufnr })

            local git_open = require('lib.nivm_tree_git_open');
            vim.keymap.set('n', '<leader>ga', git_open.toggle_all, { buffer = bufnr })
            vim.keymap.set('n', '<leader>gc', git_open.toggle_at_cursor, { buffer = bufnr })

            vim.keymap.set('n', 'K', api.node.show_info_popup, { buffer = bufnr })
        end,
        filters = { custom = { "^.git$" } },
        view = {
            width = 30,
        }
    },
    keys = {
        { '<leader>t', ':NvimTreeToggle<CR>', { silent = true} },
        { '<leader>f', ':NvimTreeFocus<CR>', { silent = true} },
    },
}
