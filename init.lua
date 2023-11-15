--------- SETTINGS ----------
vim.o.clipboard = 'unnamedplus'
vim.wo.number = true
vim.wo.relativenumber = true
vim.opt.wrap = false
vim.o.termguicolors = true


vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.smartindent = true
vim.opt.expandtab = true

vim.opt.backup = false
vim.opt.undofile = true
vim.opt.swapfile = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"


vim.opt.scrolloff = 15
vim.opt.sidescrolloff = 35

vim.opt.updatetime = 600


--------- YANK-HIGHLIGHT ----------
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
    callback = function() vim.highlight.on_yank() end,
    group = highlight_group,
    pattern = '*',
})



--------- BINDGINS ----------
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)

vim.keymap.set("n", "<leader>q", vim.cmd.Ex)
vim.keymap.set("i", "jk", "<ESC>", { silent = true })

vim.keymap.set("n", "<leader>ss", ':so<CR>:PackerSync<CR>')

vim.keymap.set("v", "<M-j>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<M-k>", ":m '<-2<CR>gv=gv")

vim.keymap.set('n', '<leader><Tab>', '<C-w><C-p>', { noremap = true })

vim.keymap.set('n', '<M-j>', '<C-W>j')
vim.keymap.set('n', '<M-k>', '<C-W>k')
vim.keymap.set('n', '<M-l>', '<C-W>l')
vim.keymap.set('n', '<M-h>', '<C-W>h')

vim.keymap.set('n', ';w', ':w<CR>')
