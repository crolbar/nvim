return {
    {
        "smoka7/hop.nvim",
        opts = { keys = 'etovxqpdygfblhckisuranjwm' },

        keys = { { "<C-f>", ":HopWord<CR>" }, }
    },

    {
        "ggandor/leap.nvim",
        keys = {
            { 's',
                function ()
                    local current_window = vim.fn.win_getid()
                    require('leap').leap { target_windows = { current_window } }
                end
            },
        },
    }
}
