return {
    "lukas-reineke/indent-blankline.nvim",
    name = "ibl",
    lazy = false,
    config = function ()
        local hooks = require("ibl.hooks")
        hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
            vim.api.nvim_set_hl(0, "Violet", { fg = "#92328F" })
        end)

        require('ibl').setup({
            indent = {
                char = ' ',
                smart_indent_cap = false,
            },
            scope = {
                char = '▏',
                show_start = false,
                show_end = false,
                show_exact_scope = true,
                highlight = {"Violet"},
            }
        })
    end,
    keys = {
        { "<leader>il",  "<cmd>IBLToggle<cr>" },
    },
}
