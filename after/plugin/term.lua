require'toggleterm'.setup()

function _G.set_terminal_keymaps()
    vim.keymap.set('t', '<M-k>', [[<Cmd>wincmd k<CR>]])
    vim.keymap.set('t', '<M-h>', [[<Cmd>wincmd h<CR>]])
    vim.keymap.set('t', '<M-l>', [[<Cmd>wincmd l<CR>]])

    vim.keymap.set("t", "<M-`>", '<Cmd>1ToggleTerm <CR>')
    vim.keymap.set("t", "<M-1>", '<Cmd>2ToggleTerm <CR>')
    vim.keymap.set("t", "<M-2>", '<Cmd>3ToggleTerm <CR>')
end

vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')


vim.keymap.set("n", "<M-`>", ':1ToggleTerm size=20 direction=float <CR>')
vim.keymap.set("n", "<M-1>", ':2ToggleTerm size=20 direction=horizontal <CR>')
vim.keymap.set("n", "<M-2>", ':3ToggleTerm size=20 direction=horizontal <CR>')

local cmd = "cargo run"
vim.keymap.set("n", "<S-X>", string.format(':2TermExec cmd="%s"<CR>', cmd))
