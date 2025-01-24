return {
    tag = "v4.9.0",
    "folke/noice.nvim",
    opts = {
        cmdline = {
            view = "cmdline",
        },
        routes = {
            {
                filter = { event = "msg_show" },
                view = "mini",
            },
        },
        lsp = {
            progress = {
                enabled = false,
            },
            override = {
                ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
                ["vim.lsp.util.stylize_markdown"] = true,
                ["cmp.entry.get_documentation"] = true,
            },
        },
        presets = {
            bottom_search = true, -- use a classic bottom cmdline for search
            command_palette = false, -- position the cmdline and popupmenu together
            long_message_to_split = true, -- long messages will be sent to a split
        },
    }
}
