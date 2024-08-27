local vi_mode_colors = {
    NORMAL = "bg1",
    OP = "bg1",
    INSERT = "#3DAA63",
    VISUAL = "#BE95FF",
    LINES = "#BE95FF",
    BLOCK = "#BE95FF",
    REPLACE = "#EE5396",
    --COMMAND = "aqua", -- im using noice so no statusline when in command
    TERM = "#3DDBD9",
}

local theme = {
    bg = "#131313",
    bg1 = "#808080",
    fg = "#B6B8BB"
}

local l = {
    {
        { -- LEFT
            provider = "vi_mode",
            hl = function()
                return {
                    fg = "bg",
                    bg = require("feline.providers.vi_mode").get_mode_color(),
                    style = "bold",
                }
            end,
            icon = "",
            right_sep = "block",
            left_sep = "block",
        },

        { provider = "git_branch", icon = " ", left_sep = "block", right_sep = "block", },

        { provider = "git_diff_added", hl = { fg = "#3DAA63", }, icon = " +" },
        { provider = "git_diff_changed", hl = { fg = "#08BDBA", }, icon = " ~" },
        { provider = "git_diff_removed", hl = { fg = "#EE5396", }, icon = " -" },

        { provider = "diagnostic_errors", hl = { fg = "#EE5396", }, icon = " 󰅚 ", left_sep = "block"},
        { provider = "diagnostic_warnings", hl = { fg = "#B68FF4", }, icon = " 󰀪 "},
        { provider = "diagnostic_hints", hl = { fg = "#3DDBD9", }, icon = " 󰌶 "},

        { -- recording
            provider = function ()
                local mode = require("noice").api.statusline.mode.get()

                if string.match(mode, "recording") then
                    return mode
                else
                    return ""
                end
            end,
            enabled = require("noice").api.statusline.mode.has,
            hl = { fg = "#df4a63", style = "bold" },
            left_sep = "block",
            right_sep = "block",
        },
    },

    { -- MID
        {
            provider = {
                name = "file_info",
                opts = {
                    type = "relative-short",
                },
            },
            hl = {
                style = "bold",
            },
            icon = {
                hl = {
                    style = "NONE"
                }
            }
        },
    },

    { -- RIGHT
        { -- harpoon
            provider = function ()
                local harpoon = require("harpoon")
                local list = harpoon:list():display()
                local indicators = { "A", "O", "E", "U", "I", "D", "H", "T", "N", "S" }
                local s = ""

                for i = 1, harpoon:list():length() do
                    local v = indicators[i]
                    local curr = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(0), ':t')

                    if string.match(list[i], curr .. "$") then
                        v = '[' .. v .. ']'
                    end

                    s = s .. " " .. v
                end

                return s
            end,
            icon = {
                str = " ",
                hl = {
                    fg = "#7EBAE4"
                }
            },
            left_sep = "block",
            right_sep = "block",
        },

        { provider = "lsp_client_names", left_sep = "block", right_sep = "block", icon = {str = "󰣨 ", hl = { fg= "#ACA6F5" }} },

        { provider = "line_percentage", left_sep = "block", right_sep = "block", },

        {
            provider = "position",
            hl = function ()
                return {
                    fg = "bg",
                    bg = require("feline.providers.vi_mode").get_mode_color(),
                    style = "bold",
                }
            end,
            left_sep = "block",
            right_sep = "block",
        },
    }

}

return {
    "freddiehaddad/feline.nvim",
    enabled = true,
    opts = {
        components = {
            active = l,
            inactive = l,
        },
        theme = theme,
        vi_mode_colors = vi_mode_colors,
    },
    init = function()
        -- force the statusline to update (the statusline for some reason doesn't update when I go into 'no' mode)
        vim.api.nvim_create_autocmd('ModeChanged', { callback = function() vim.cmd('redrawstatus') end, })
    end,
}
