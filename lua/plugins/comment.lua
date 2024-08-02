return {
    "numToStr/Comment.nvim",
    config = function ()
        local api = require('Comment.api')
        vim.keymap.set('n', '<C-/>i', api.toggle.linewise.current)
        vim.keymap.set('n', '<C-/>', api.call('toggle.linewise', 'g@'), { expr = true })

        local esc = vim.api.nvim_replace_termcodes('<ESC>', true, false, true)
        vim.keymap.set('x', '<C-/>', function()
            vim.api.nvim_feedkeys(esc, 'nx', false)
            api.toggle.linewise(vim.fn.visualmode())
        end)


        require("Comment").setup({
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
        })
    end
}
