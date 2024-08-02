return {
    "nvim-treesitter/nvim-treesitter",
    opts = {
        ensure_installed = { "c", "lua", "vim", "vimdoc", "rust" },
        sync_install = false,
        auto_install = true,
        highlight = {
            enable = true,
        },
    }
}
