return {
    "akinsho/toggleterm.nvim",
    keys = {
        { '<M-K>', [[<Cmd>wincmd k<CR>]], mode = 't', {silent = true}, },
        { '<M-H>', [[<Cmd>wincmd h<CR>]], mode = 't', {silent = true}, },
        { '<M-L>', [[<Cmd>wincmd l<CR>]], mode = 't', {silent = true}, },
        { '<M-J>', [[<Cmd>wincmd j<CR>]], mode = 't', {silent = true}, },

        { "<M-`>", '<Cmd>1ToggleTerm <CR>', mode = "t", {silent = true}, },
        { "<M-1>", '<Cmd>2ToggleTerm <CR>', mode = "t", {silent = true}, },
        { "<M-2>", '<Cmd>3ToggleTerm <CR>', mode = "t", {silent = true}, },

        { "<A-Esc>", '<C-\\><C-n>', mode = "t" },

        { "<M-`>", '<Esc><CMD>1ToggleTerm size=20 direction=float<CR>', mode = { "v" , "i", "n"}, {silent = true}, },

        { "<M-1>", '<Esc><CMD>2ToggleTerm size=20 direction=horizontal<CR>', {silent = true}, },
        { "<M-2>", '<Esc><CMD>3ToggleTerm size=20 direction=horizontal<CR>', {silent = true}, },


        { "<S-X>", string.format(':1TermExec cmd="%s"<CR>', "!!"), },
    },
    opts = {},
}
