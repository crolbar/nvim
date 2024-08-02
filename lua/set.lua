vim.o.clipboard = 'unnamedplus'
vim.wo.number = true
vim.wo.relativenumber = true
vim.opt.wrap = false
vim.o.termguicolors = true
vim.api.nvim_command('set iskeyword-=_')


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
