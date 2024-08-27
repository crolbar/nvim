return {
    "stevearc/oil.nvim",
    keys = { { '-', '<CMD>Oil<CR>' } },
    event = { "VimEnter */*,.*" },
    opts = {
        default_file_explorer = true,
        columns = {
            "icon",
            --"permissions",
            --"size",
            --"mtime",
        },

        delete_to_trash = true,
        skip_confirm_for_simple_edits = true,
        prompt_save_on_select_new_entry = true,

        keymaps = {
            ["g?"] = "actions.show_help",
            ["<CR>"] = "actions.select",
            ["<C-s>"] = { "actions.select", opts = { vertical = true }, desc = "Open the entry in a vertical split" },
            ["<C-h>"] = { "actions.select", opts = { horizontal = true }, desc = "Open the entry in a horizontal split" },
            ["<M-t>"] = { "actions.select", opts = { tab = true }, desc = "Open the entry in new tab" },
            ["<C-p>"] = "actions.preview",
            ["<C-c>"] = "actions.close",
            ["<C-l>"] = "actions.refresh",
            ["-"] = "actions.parent",
            ["_"] = "actions.open_cwd",
            ["`"] = "actions.cd",
            ["~"] = { "actions.cd", opts = { scope = "tab" }, desc = ":tcd to the current oil directory" },
            ["gs"] = "actions.change_sort",
            ["gx"] = "actions.open_external",
            ["g."] = "actions.toggle_hidden",
        },

        use_default_keymaps = false,

        view_options = {
            show_hidden = false,
            -- This function defines what will never be shown, even when `show_hidden` is set
            --is_always_hidden = function(name, bufnr)
            --    return false
            --end,
            },

            keymaps_help = {
                border = "rounded",
            },
        },
    }
