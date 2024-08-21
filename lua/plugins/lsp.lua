return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "hrsh7th/nvim-cmp",
        "hrsh7th/cmp-nvim-lsp",
        "stevearc/conform.nvim", -- i don't actually use formatters but nix'es 2 space indent's scare me
        "L3MON4D3/LuaSnip",
        --"mfussenegger/nvim-jdtls",
    },
    config = function ()
        local lspconfig = require('lspconfig')
        local capabilities = require("cmp_nvim_lsp").default_capabilities()

        ---------- SERVERS -----------

        local servers = {
            'html', 'clangd', 'rust_analyzer', 'pyright',
            'lua_ls', 'bashls', 'cssls', 'tsserver', 'nil_ls',
            'jdtls'
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

        require("conform").formatters_by_ft.nix = { "alejandra" }
        vim.keymap.set('n', '<M-f>', require('conform').format)

        ---------- CMP -----------

        local luasnip = require 'luasnip'

        local cmp = require 'cmp'
        cmp.setup {
            snippet = {
                expand = function(args)
                    luasnip.lsp_expand(args.body)
                end,
            },
            mapping = cmp.mapping.preset.insert({
                ['<C-u>'] = cmp.mapping.scroll_docs(-4), -- Up
                ['<C-d>'] = cmp.mapping.scroll_docs(4),  -- Down
                -- C-b (back) C-f (forward) for snippet placeholder navigation.
                ['<C-c>'] = cmp.mapping.complete(),
                ['<CR>'] = cmp.mapping.confirm {
                    behavior = cmp.ConfirmBehavior.Replace,
                    select = true,
                },
                ['<Tab>'] = cmp.mapping(function(fallback)
                    if cmp.visible() then
                        cmp.select_next_item()
                    else
                        fallback()
                    end
                end, { 'i', 's' }),
                ['<S-Tab>'] = cmp.mapping(function(fallback)
                    if cmp.visible() then
                        cmp.select_prev_item()
                    else
                        fallback()
                    end
                end, { 'i', 's' }),
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
                border = "rounded",
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
                vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action)
                vim.keymap.set('n', 'K', vim.lsp.buf.hover)
                vim.keymap.set('n', '<leader>k', vim.lsp.buf.signature_help)

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
