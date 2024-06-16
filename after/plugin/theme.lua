require('nightfox').setup({
    options = {
        transparent = true,
        terminal_colors = false,
    },
    palettes = {
        all = {
            comment = "#008040",
            sel0 = "#2D2036",

            blue = { base = "#DE64AC", dim = "#92328F", bright = "#FF79C1" },
            cyan = { base = "#ffffff", dim = "#ffffff", bright = "#ffffff" },

            bg0 = "#000000",
            bg1 = "#000000",
            bg2 = "#000000",
            bg4 = "#000000",
            bg3 = "#000000",
        }

    },
})

vim.cmd("colorscheme carbonfox")
vim.opt.laststatus = 3
require('lualine').setup {
    options = {
        component_separators = { left = '', right = ''},
        section_separators = { left = '', right = ''},
    },
    sections = {
        lualine_a = {'mode'},
        lualine_b = {'filename'},
        lualine_c = {'diff', 'diagnostics'},
        lualine_x = {
           {
               "harpoon2",
               icon = '',
               indicators = { "A", "O", "E", "U", "I", "D", "H", "T", "N", "S" },
               active_indicators = { "[A]", "[O]", "[E]", "[U]", "[I]", "[D]", "[H]", "[T]", "[N]", "[S]" },
           }, 'filetype', 'fileformat', 'branch'},
        lualine_y = {'progress'},
        lualine_z = {'location'}
    },
}


local highlight = {
    "Violet",
}
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
        highlight = highlight
    }
})

vim.keymap.set("n", "<leader>il",  ":IBLToggle<CR>", { silent = true })
