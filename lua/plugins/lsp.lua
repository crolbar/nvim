return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "hrsh7th/nvim-cmp",
        "hrsh7th/cmp-nvim-lsp",
        "L3MON4D3/LuaSnip",
    },
    config = function ()
        local lspconfig = require('lspconfig')
        local capabilities = require("cmp_nvim_lsp").default_capabilities()

        ---------- SERVERS -----------

        local servers = {
            'html', 'clangd', 'rust_analyzer', 'pyright',
            'lua_ls', 'bashls', 'cssls', 'tsserver', 'nil_ls',
            'jdtls', 'phpactor', 'gopls'
        }

        for _, lsp in ipairs(servers) do
            lspconfig[lsp].setup {
                capabilities = capabilities,
            }
        end

        lspconfig.lua_ls.setup {
            settings = {
                Lua = {
                    diagnostics = {
                        globals = { 'vim' },
                    },
                },
            },
        }

        ---------- CMP -----------


        local cmp = require 'cmp'
        local confirm_cfg = { select = true, behavior = cmp.ConfirmBehavior.Replace }

        cmp.setup {
            completion = {
                autocomplete = false
            },
            snippet = {
                expand = function(args)
                    require('luasnip').lsp_expand(args.body)
                end,
            },
            mapping = cmp.mapping.preset.insert({
                ['<C-u>'] = cmp.mapping.scroll_docs(-4),
                ['<C-d>'] = cmp.mapping.scroll_docs(4),

                ['<C-c>'] = cmp.mapping.complete(),

                ['<C-n>'] = cmp.mapping.select_next_item(),
                ['<C-p>'] = cmp.mapping.select_prev_item(),
                ['<C-y>'] = cmp.mapping.confirm(confirm_cfg),
            }),
            sources = {
                { name = 'nvim_lsp' },
                { name = 'luasnip' },
                { name = 'buffer' },
            },
        }

        vim.diagnostic.config({
            float = {
                focusable = false,
                style = "minimal",
                border = "single",
                source = "always",
                header = "",
                prefix = "",
            },
        })

        ---------- BINDINGS -----------

        vim.keymap.set('n', '<space>e', vim.diagnostic.open_float)
        vim.keymap.set('n', '<space>le', vim.diagnostic.setloclist)
        vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
        vim.keymap.set('n', ']d', vim.diagnostic.goto_next)

        --vim.keymap.del('n', 'grn')
        --vim.keymap.del('n', 'grr')
        --vim.keymap.del('n', 'gra')

        vim.api.nvim_create_autocmd('LspAttach', {
            group = vim.api.nvim_create_augroup('UserLspConfig', {}),
            callback = function()
                vim.keymap.set('n', 'gD', vim.lsp.buf.declaration)
                vim.keymap.set('n', 'K', vim.lsp.buf.hover)

                vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename)
                vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action)
                vim.keymap.set("i", "<C-h>", vim.lsp.buf.signature_help)
            end,
        })

        local switch_nix_lsp = function ()
            local bufnr = vim.api.nvim_get_current_buf()
            local c = vim.lsp.buf_get_clients(bufnr)
            local name = ""

            for client_id, client in pairs(c) do
                name = client.name
                if name == 'nixd' or name == 'nil_ls' then
                    vim.lsp.buf_detach_client(bufnr, client_id)
                end
            end

            if name == 'nixd' then
                lspconfig.nil_ls.setup {
                    capabilities = capabilities,
                }
                print("Using nil_ls")
            elseif name == 'nil_ls' then
                lspconfig.nixd.setup { capabilities = capabilities }
                lspconfig.nixd.setup { capabilities = capabilities }
                print("Using nixd")
            end
        end

        vim.keymap.set('n', '<leader>nn', switch_nix_lsp)
    end
}
