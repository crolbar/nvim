return {
    "akinsho/toggleterm.nvim",
    keys = {
        { '<M-K>', [[<Cmd>wincmd k<CR>]], mode = 't' },
        { '<M-H>', [[<Cmd>wincmd h<CR>]], mode = 't' },
        { '<M-L>', [[<Cmd>wincmd l<CR>]], mode = 't' },
        { '<M-J>', [[<Cmd>wincmd j<CR>]], mode = 't' },

        { "<M-`>", '<Cmd>1ToggleTerm <CR>', {silent = true}, mode = "t" },
        { "<M-1>", '<Cmd>2ToggleTerm <CR>', mode = "t" },
        { "<M-2>", '<Cmd>3ToggleTerm <CR>', mode = "t" },

        { "<A-Esc>", '<C-\\><C-n>', mode = "t" },

        --{ "<M-`>", ':1ToggleTerm size=20 direction=float <CR>', mode = "v" },
        { "<M-`>", ':1ToggleTerm size=20 direction=float <CR>', {silent = true}, },
        { "<M-`>", '<Esc> :1ToggleTerm size=20 direction=float <CR>', mode = { "v" , "i" }, {silent = true}, },

        { "<M-1>", ':2ToggleTerm size=20 direction=horizontal <CR>', mode = "n" },
        { "<M-2>", ':3ToggleTerm size=20 direction=horizontal <CR>', mode = "n" },


        { "<S-X>", string.format(':1TermExec cmd="%s"<CR>', "!!"), mode = "n" },
    },
    opts = {},
}
