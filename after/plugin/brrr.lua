require'hop'.setup {
    keys = 'etovxqpdygfblhckisuranjwm'
}

vim.keymap.set("n", "<C-f>", ":HopWord<CR>")

vim.keymap.set('n', 's', function ()
  local current_window = vim.fn.win_getid()
  require('leap').leap { target_windows = { current_window } }
end)
