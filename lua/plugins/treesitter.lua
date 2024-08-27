return {
    "nvim-treesitter/nvim-treesitter",
    build = ':TSUpdate',
    config = function ()
        -- workaround for treesitter to work in nix installed with HM (https://github.com/NixOS/nixpkgs/issues/189838)
        local parser_install_dir = vim.fn.stdpath("cache") .. "/treesitters"
        vim.fn.mkdir(parser_install_dir, "p")
        vim.opt.runtimepath:append(parser_install_dir)

        require'nvim-treesitter.configs'.setup {
            ensure_installed = { "c", "lua", "vim", "vimdoc", "rust" },
            parser_install_dir = parser_install_dir,
            sync_install = false,
            auto_install = true,
            highlight = {
                enable = true,
            },
        }
    end
}
