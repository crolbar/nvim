return {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = "cd app && yarn install",
    config = function ()
        vim.cmd([[
            function! OpenMarkdownPreview(url)
                call jobstart(['firefox', '--new-window', a:url], {'detach': v:true})
            endfunction
        ]])


        vim.g.mkdp_browserfunc = 'OpenMarkdownPreview'
    end
}
