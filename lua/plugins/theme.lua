return {
    "EdenEast/nightfox.nvim",
    dependencies = {
        "nvim-lualine/lualine.nvim",
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
        vim.cmd('hi ColorColumn guibg=#262626')
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
                        function ()
                            local mode = require("noice").api.statusline.mode.get()

                            if string.match(mode, "recording") then
                                return mode
                            else
                                return ""
                            end
                        end,
                        cond = require("noice").api.statusline.mode.has,
                        color = { fg = "#df4a63" },
                    },
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
    end
}
