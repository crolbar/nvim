return {
    "EdenEast/nightfox.nvim",
    init = function ()
        vim.cmd.colorscheme("carbonfox")
        vim.cmd('hi ColorColumn guibg=#262626')
    end,
    opts = {
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
    },
}
