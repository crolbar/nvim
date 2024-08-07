return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function ()
        require("harpoon").setup()
        local harpoon = require("harpoon")

        vim.keymap.set("n", "<leader>z", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
        vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
        vim.keymap.set("n", "<leader>r", function() harpoon:list():remove() end)

        vim.keymap.set("n", "<A-a>", function() harpoon:list():select(1) end)
        vim.keymap.set("n", "<A-o>", function() harpoon:list():select(2) end)
        vim.keymap.set("n", "<A-e>", function() harpoon:list():select(3) end)
        vim.keymap.set("n", "<A-u>", function() harpoon:list():select(4) end)
        vim.keymap.set("n", "<A-i>", function() harpoon:list():select(5) end)
        vim.keymap.set("n", "<A-d>", function() harpoon:list():select(6) end)
        vim.keymap.set("n", "<A-h>", function() harpoon:list():select(7) end)
        vim.keymap.set("n", "<A-t>", function() harpoon:list():select(8) end)
        vim.keymap.set("n", "<A-n>", function() harpoon:list():select(9) end)
        vim.keymap.set("n", "<A-s>", function() harpoon:list():select(10) end)

        vim.keymap.set("n", "<leader><A-a>", function() harpoon:list():replace_at(1) end)
        vim.keymap.set("n", "<leader><A-o>", function() harpoon:list():replace_at(2) end)
        vim.keymap.set("n", "<leader><A-e>", function() harpoon:list():replace_at(3) end)
        vim.keymap.set("n", "<leader><A-u>", function() harpoon:list():replace_at(4) end)
        vim.keymap.set("n", "<leader><A-i>", function() harpoon:list():replace_at(5) end)
        vim.keymap.set("n", "<leader><A-d>", function() harpoon:list():replace_at(6) end)
        vim.keymap.set("n", "<leader><A-h>", function() harpoon:list():replace_at(7) end)
        vim.keymap.set("n", "<leader><A-t>", function() harpoon:list():replace_at(8) end)
        vim.keymap.set("n", "<leader><A-n>", function() harpoon:list():replace_at(9) end)
        vim.keymap.set("n", "<leader><A-s>", function() harpoon:list():replace_at(10) end)
    end
}
