return {
    "stevearc/conform.nvim", -- i don't actually use formatters but nix'es 2 space indent's scare me
    keys = {
        { '<M-f>', function() require('conform').format() end },
    },
    opts = {
        formatters = {
            ["google-java-format"] = { command = "google-java-format", append_args = { "-a" }},
            ["clang-format"] = { command = "clang-format", args = {"--style={\"BasedOnStyle\": \"Mozilla\", \"IndentWidth\": 4}"},},
            ["prettier"] = { command = "prettier", append_args = { "--tab-width=4" }}
        },
        formatters_by_ft = {
            nix = { "alejandra" },
            java = { "clang-format" },
            c = { "clang-format" },
            javascript = { "prettier" },
            javascriptreact = { "prettier" },
            typescript = { "prettier" },
            typescriptreact = { "prettier" },
            php = { "php_cs_fixer" },
            blade = { "blade-formatter" },
            markdown = { "prettier" },
            go = { "gofmt" },
        },
    }
}
