vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)

vim.keymap.set("n", "<leader>q", vim.cmd.Ex)

vim.keymap.set('i', '<M-h>', "<Left>")
vim.keymap.set('i', '<M-j>', "<Down>")
vim.keymap.set('i', '<M-k>', "<Up>")
vim.keymap.set('i', '<M-l>', "<Right>")

vim.keymap.set('c', '<M-h>', "<Left>")
vim.keymap.set('c', '<M-l>', "<Right>")

vim.keymap.set("v", "<M-j>", ":m '>+1<CR>gv")
vim.keymap.set("v", "<M-k>", ":m '<-2<CR>gv")

vim.keymap.set('n', '<leader><Tab>', '<C-w><C-p>', { noremap = true })

vim.keymap.set('n', '<M-J>', '<C-W>j')
vim.keymap.set('n', '<M-K>', '<C-W>k')
vim.keymap.set('n', '<M-L>', '<C-W>l')
vim.keymap.set('n', '<M-H>', '<C-W>h')

vim.keymap.set("n", "<leader>ii",  ":!feh %<CR>", { silent = true })

vim.keymap.set("n", "<leader>n",  ":noh<CR>", { silent = true })

vim.keymap.set("n", "<C-j>",  ":cnext<CR>", { silent = true })
vim.keymap.set("n", "<C-k>",  ":cprev<CR>", { silent = true })

vim.keymap.set({"n", "v"}, "<leader>d", [["fd]])
vim.keymap.set({"n", "v"}, "<leader>c", [["fc]])
vim.keymap.set({"n", "v"}, "<leader>x", [["fx]])
vim.keymap.set({"n", "v"}, "<leader>p", [["fp]])

vim.keymap.set("v", ">", ">gv")
vim.keymap.set("v", "<", "<gv")

-- remove annoying binds
vim.keymap.set("v", "K", "<up>")
vim.keymap.set("v", "<leader>j", "J")
vim.keymap.set("v", "J", "<Down>")

vim.keymap.set("i", "<A-.>", "<nop>")

-- emacs brain
vim.keymap.set('n', '<C-x><C-s>', ":w<CR>")
