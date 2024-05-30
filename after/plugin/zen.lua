vim.keymap.set("n", "<leader>ww", ':TZFocus<CR>:TZMinimalist<CR>', { silent = true })
vim.keymap.set("v", "<leader>wn", ":'<,'>TZNarrow<CR>")

vim.keymap.set("n", "<leader>ww", function()
    require("zen-mode").setup {
        window = {
            width = 400,
            options = {
                number = false, -- disable number column
                relativenumber = false, -- disable relative numbers
            },
        },
        plugins = {
            options = {
                laststatus = 0, -- turn off the statusline in zen mode
            },
        },
    }
    vim.cmd(':Gitsigns toggle_signs')
    require("zen-mode").toggle()
end)

