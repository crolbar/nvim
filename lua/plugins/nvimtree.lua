return {
    'nvim-tree/nvim-tree.lua',
    dependencies = {
        "nvim-tree/nvim-web-devicons"
    },
    opts = {
        on_attach = function(bufnr)
            local api = require('nvim-tree.api');

            local function opts(desc)
                return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
            end

            api.config.mappings.default_on_attach(bufnr)
            vim.keymap.del('n', 'f', { buffer = bufnr })
            vim.keymap.del('n', '<C-t>', { buffer = bufnr })

            vim.keymap.set('n', 'K', api.node.show_info_popup, opts("Info"))
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
