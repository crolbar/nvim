return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {},
    keys = {
        { "<leader>z", function() require("harpoon").ui:toggle_quick_menu(require("harpoon"):list()) end},
        { "<leader>a", function()
            require("harpoon"):list():add()
            vim.notify("Added " .. vim.fn.expand('%:t') .. " to harpoon")
        end},

        { "<A-a>", function() require("harpoon"):list():select(1) end},
        { "<A-o>", function() require("harpoon"):list():select(2) end},
        { "<A-e>", function() require("harpoon"):list():select(3) end},
        { "<A-u>", function() require("harpoon"):list():select(4) end},
        { "<A-i>", function() require("harpoon"):list():select(5) end},
        { "<A-d>", function() require("harpoon"):list():select(6) end},
        { "<A-h>", function() require("harpoon"):list():select(7) end},
        { "<A-t>", function() require("harpoon"):list():select(8) end},
        { "<A-n>", function() require("harpoon"):list():select(9) end},
        { "<A-s>", function() require("harpoon"):list():select(10) end},

        { "<leader><A-a>", function()
            require("harpoon"):list():replace_at(1)
            vim.notify("Replaced harpoon num: 1 with: " .. vim.fn.expand('%:t'))
        end},
        { "<leader><A-o>", function()
            require("harpoon"):list():replace_at(2)
            vim.notify("Replaced harpoon num: 2 with: " .. vim.fn.expand('%:t'))
        end},
        { "<leader><A-e>", function()
            require("harpoon"):list():replace_at(3)
            vim.notify("Replaced harpoon num: 3 with: " .. vim.fn.expand('%:t'))
        end},
        { "<leader><A-u>", function()
            require("harpoon"):list():replace_at(4)
            vim.notify("Replaced harpoon num: 4 with: " .. vim.fn.expand('%:t'))
        end},
        { "<leader><A-i>", function()
            require("harpoon"):list():replace_at(5)
            vim.notify("Replaced harpoon num: 5 with: " .. vim.fn.expand('%:t'))
        end},
        { "<leader><A-d>", function()
            require("harpoon"):list():replace_at(6)
            vim.notify("Replaced harpoon num: 6 with: " .. vim.fn.expand('%:t'))
        end},
        { "<leader><A-h>", function()
            require("harpoon"):list():replace_at(7)
            vim.notify("Replaced harpoon num: 7 with: " .. vim.fn.expand('%:t'))
        end},
        { "<leader><A-t>", function()
            require("harpoon"):list():replace_at(8)
            vim.notify("Replaced harpoon num: 8 with: " .. vim.fn.expand('%:t'))
        end},
        { "<leader><A-n>", function()
            require("harpoon"):list():replace_at(9)
            vim.notify("Replaced harpoon num: 9 with: " .. vim.fn.expand('%:t'))
        end},
        { "<leader><A-s>", function()
            require("harpoon"):list():replace_at(10)
            vim.notify("Replaced harpoon num: 10 with: " .. vim.fn.expand('%:t'))
        end},
    },
}
