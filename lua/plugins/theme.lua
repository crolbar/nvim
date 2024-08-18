return {
    "EdenEast/nightfox.nvim",
    dependencies = {
        "nvim-lualine/lualine.nvim",
        "lukas-reineke/indent-blankline.nvim",
        "letieu/harpoon-lualine",
    },
    config = function ()
        require('nightfox').setup({
            options = {
                transparent = false,
                terminal_colors = false,
            },
            palettes = {
                all = {
                    comment = "#007035",

                    green = { base = "#3DAA63", dim = "#3DAA63", bright = "#3DAA63" },
                    blue = { base = "#DE64AC", dim = "#92328F", bright = "#FF79C1" },
                    cyan = { base = "#D4D4D4", dim = "#D4D4D4", bright = "#D4D4D4" },

                    bg0 = "#131313",
                    bg1 = "#161616", -- alt 2E2E2E
                    bg2 = "#161616",
                    bg4 = "#525252",
                    bg3 = "#262626",
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
                    function ()
                        local bufnr = vim.api.nvim_get_current_buf()
                        local c = vim.lsp.buf_get_clients(bufnr)
                        local n = ""
                        for i, client in pairs(c) do
                            if i > 1 then
                                n = n .. ' + ' .. client.name
                            else
                                n = client.name
                            end
                        end
                        return n
                    end,

                    {
                        "harpoon2",
                        icon = '',
                        indicators = { "A", "O", "E", "U", "I", "D", "H", "T", "N", "S" },
                        active_indicators = { "[A]", "[O]", "[E]", "[U]", "[I]", "[D]", "[H]", "[T]", "[N]", "[S]" },
                    },
                    'filetype',
                    'fileformat',
                    'branch',
                },
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
    end
}
