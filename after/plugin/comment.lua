require('Comment').setup({
    ---Add a space b/w comment and the line
    padding = false,
    ---LHS of toggle mappings in NORMAL mode
    toggler = {
        ---Line-comment toggle keymap
        line = '<C-/>i',
    },
    ---LHS of operator-pending mappings in NORMAL and VISUAL mode
    opleader = {
        ---Line-comment keymap
        line = '<C-/>',
    },
    ---LHS of extra mappings
    extra = {
        ---Add comment on the line above
        above = '<C-/>O',
        ---Add comment on the line below
        below = '<C-/>o',
        ---Add comment at the end of line
        eol = '<C-/>A',
    },
})

