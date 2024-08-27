return {
    "stevearc/conform.nvim", -- i don't actually use formatters but nix'es 2 space indent's scare me
    keys = {
        { '<M-f>', function() require('conform').format() end },
    },
    opts = {
        formatters = {
            ["google-java-format"] = { command = "google-java-format", append_args = { "-a" }}
        },
        formatters_by_ft = {
            nix = { "alejandra" },
            java = { "google-java-format" }
        },
    }
}
