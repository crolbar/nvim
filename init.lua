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

vim.keymap.set("n", "<leader>q", vim.cmd.Ex)
vim.keymap.set("n", "<leader>n", vim.cmd.noh)
vim.keymap.set("i", "jj", "<ESC>", { silent = true })

vim.keymap.set("n", "<leader>ss", ':so<CR>:PackerSync<CR>')

vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
