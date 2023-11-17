require'hop'.setup {
    keys = 'etovxqpdygfblhckisuranjwm'
}

vim.keymap.set("n", "f", ":HopWord<CR>")
vim.keymap.set("n", "L", ":HopLine<CR>")

vim.keymap.set('n', 'm', function ()
  local current_window = vim.fn.win_getid()
  require('leap').leap { target_windows = { current_window } }
end)
