require'toggleterm'.setup()

vim.keymap.set('t', '<M-k>', [[<Cmd>wincmd k<CR>]])
vim.keymap.set('t', '<M-h>', [[<Cmd>wincmd h<CR>]])
vim.keymap.set('t', '<M-l>', [[<Cmd>wincmd l<CR>]])

vim.keymap.set("t", "<M-`>", '<Cmd>1ToggleTerm <CR>')
vim.keymap.set("t", "<M-1>", '<Cmd>2ToggleTerm <CR>')
vim.keymap.set("t", "<M-2>", '<Cmd>3ToggleTerm <CR>')

vim.keymap.set("n", "<M-`>", ':1ToggleTerm size=20 direction=float <CR>')
vim.keymap.set("n", "<M-1>", ':2ToggleTerm size=20 direction=horizontal <CR>')
vim.keymap.set("n", "<M-2>", ':3ToggleTerm size=20 direction=horizontal <CR>')

vim.keymap.set("i", "<M-`>", '<Esc> :1ToggleTerm size=20 direction=float <CR>')

local cmd = "cargo run"
vim.keymap.set("n", "<S-X>", string.format(':1TermExec cmd="%s"<CR>', cmd))
