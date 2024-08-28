return {
    "numToStr/Comment.nvim",
    keys = {
        { '<C-/>i', function() require('Comment.api').toggle.linewise.current() end },
        { '<C-/>', function() require('Comment.api').call('toggle.linewise', 'g@') end, { expr = true } },

        { '<C-/>',
            function()
                vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('<ESC>', true, false, true), 'nx', false)
                require('Comment.api').toggle.linewise(vim.fn.visualmode())
            end,
            mode = {"n", "v"},
        },
        {'<C-_>', function()end, mode = {'n', 'v'}}
    },
    opts = {
        ---Add a space b/w comment and the line
        padding = false,
        ---LHS of toggle mappings in NORMAL mode
        toggler = {
            ---Line-comment toggle keymap
            line = '<C-_>i',
        },
        ---LHS of operator-pending mappings in NORMAL and VISUAL mode
        opleader = {
            ---Line-comment keymap
            line = '<C-_>',
        },
        ---LHS of extra mappings
        extra = {
            ---Add comment on the line above
            above = '<C-_>O',
            ---Add comment on the line below
            below = '<C-_>o',
            ---Add comment at the end of line
            eol = '<C-_>A',
        },
    }
}
