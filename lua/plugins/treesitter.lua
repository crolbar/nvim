return {
    "nvim-treesitter/nvim-treesitter",
    build = ':TSUpdate',
    config = function ()
        -- workaround for treesitter to work in nix installed with HM (https://github.com/NixOS/nixpkgs/issues/189838)
        local parser_install_dir = vim.fn.stdpath("cache") .. "/treesitters"
        vim.fn.mkdir(parser_install_dir, "p")
        vim.opt.runtimepath:append(parser_install_dir)

        require'nvim-treesitter.configs'.setup {
            ensure_installed = { "c", "lua", "vim", "vimdoc", "rust", "php", "html" },
            parser_install_dir = parser_install_dir,
            sync_install = false,
            auto_install = true,
            highlight = {
                enable = true,
            },
        }

        vim.filetype.add({
            pattern = {
                [".*%.blade%.php"] = "blade",
            }
        })

        local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
        parser_config.blade = {
            install_info = {
                url = "https://github.com/EmranMR/tree-sitter-blade",
                files = { "src/parser.c" },
                branch = "main",
            },
            filetype = "blade",
        }

        vim.treesitter.query.set('blade', 'highlights', [[
            (directive) @function
            (directive_start) @function
            (directive_end) @function
            (comment) @comment
            ((parameter) @include (#set! "priority" 110)) 
            ((php_only) @include (#set! "priority" 110)) 
            ((bracket_start) @function (#set! "priority" 120)) 
            ((bracket_end) @function (#set! "priority" 120)) 
            (keyword) @function
        ]])

        vim.treesitter.query.set('blade', 'injections', [[
            ((text) @injection.content
                (#not-has-ancestor? @injection.content "envoy")
                (#set! injection.combined)
                (#set! injection.language php))
        ]])
    end
}
