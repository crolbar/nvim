return {
    "hrsh7th/nvim-cmp",
    dependencies = {
        "L3MON4D3/LuaSnip",
    },
    config = function ()
        local cmp = require 'cmp'
        local confirm_cfg = { select = true, behavior = cmp.ConfirmBehavior.Replace }

        cmp.setup {
            --completion = {
            --    autocomplete = true
            --},
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
    end
}
--return {
--    'saghen/blink.cmp',
--    lazy = false,
--    dependencies = {
--        'rafamadriz/friendly-snippets'
--    },
--
--    version = 'v0.*',
--
--    opts = {
--        keymap = {
--            show = '<C-c>',
--            hide = '<C-e>',
--            accept = '<C-y>',
--            select_prev = { '<Up>', '<C-p>' },
--            select_next = { '<Down>', '<C-n>' },
--
--            show_documentation = '<C-space>',
--            hide_documentation = '<C-space>',
--            scroll_documentation_up = '<C-u>',
--            scroll_documentation_down = '<C-d>',
--
--            snippet_forward = {},
--            snippet_backward = {},
--        },
--
--        trigger = {
--            signature_help = {
--                enabled = true,
--            },
--        },
--        accept = {
--            auto_brackets = {
--                enabled = true,
--            },
--        },
--        highlight = {
--            use_nvim_cmp_as_default = true,
--        },
--        nerd_font_variant = 'mono',
--        windows = {
--            autocomplete = {
--                min_width = 15,
--                max_height = 20,
--                border = 'none',
--                scrolloff = 2,
--                direction_priority = { 's', 'n' },
--                selection = 'preselect',
--
--                -- Controls how the completion items are rendered on the popup window
--                -- 'simple' will render the item's kind icon the left alongside the label
--                -- 'reversed' will render the label on the left and the kind icon + name on the right
--                -- 'minimal' will render the label on the left and the kind name on the right
--                -- 'function(blink.cmp.CompletionRenderContext): blink.cmp.Component[]' for custom rendering
--                draw = 'reversed',
--            },
--            documentation = {
--                min_width = 10,
--                max_width = 60,
--                max_height = 30,
--                border = 'padded',
--                winhighlight = 'Normal:BlinkCmpDoc,FloatBorder:BlinkCmpDocBorder,CursorLine:BlinkCmpDocCursorLine,Search:None',
--                -- which directions to show the documentation window,
--                -- for each of the possible autocomplete window directions,
--                -- falling back to the next direction when there's not enough space
--                direction_priority = {
--                    autocomplete_north = { 'e', 'w', 'n', 's' },
--                    autocomplete_south = { 'e', 'w', 's', 'n' },
--                },
--                auto_show = true,
--                auto_show_delay_ms = 500,
--                update_delay_ms = 50,
--            },
--            signature_help = {
--                min_width = 1,
--                max_width = 100,
--                max_height = 10,
--                border = 'padded',
--                winhighlight = 'Normal:BlinkCmpSignatureHelp,FloatBorder:BlinkCmpSignatureHelpBorder',
--            },
--        },
--    }
--}
