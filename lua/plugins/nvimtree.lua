return {
    'nvim-tree/nvim-tree.lua',
    dependencies = {
        "nvim-tree/nvim-web-devicons"
    },
    config = function ()
        local function attach(bufnr)
            local api = require('nvim-tree.api');

            local function opts(desc)
                return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
            end

            api.config.mappings.default_on_attach(bufnr)
            vim.keymap.del('n', 'f', { buffer = bufnr })
            vim.keymap.del('n', '<C-t>', { buffer = bufnr })

            vim.keymap.set('n', 'K', api.node.show_info_popup, opts("Info"))
        end

        require("nvim-tree").setup{
            on_attach = attach,
            filters = { custom = { "^.git$" } },
            view = {
                width = 30,
            }
        }

        vim.keymap.set('n', '<leader>t', ':NvimTreeToggle<CR>', { silent = true})
        vim.keymap.set('n', '<leader>f', ':NvimTreeFocus<CR>', { silent = true})
    end
}
