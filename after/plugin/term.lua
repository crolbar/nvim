require'toggleterm'.setup()

function _G.set_terminal_keymaps()
    local opts = {buffer = 0}
    vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
    vim.keymap.set('t', '<M-k>', [[<Cmd>wincmd k<CR>]], opts)
    vim.keymap.set('t', '<M-h>', [[<Cmd>wincmd h<CR>]], opts)
    vim.keymap.set('t', '<M-l>', [[<Cmd>wincmd l<CR>]], opts)

    vim.keymap.set("t", "<M-`>", '<Cmd>1ToggleTerm <CR>')
    vim.keymap.set("t", "<M-1>", '<Cmd>2ToggleTerm <CR>')
    vim.keymap.set("t", "<M-2>", '<Cmd>3ToggleTerm <CR>')
end

vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')


vim.keymap.set("n", "<M-`>", ':1ToggleTerm size=20 direction=float <CR>', { noremap = true })
vim.keymap.set("n", "<M-1>", ':2ToggleTerm size=20 direction=horizontal <CR>', { noremap = true })
vim.keymap.set("n", "<M-2>", ':3ToggleTerm size=20 direction=horizontal <CR>', { noremap = true })


