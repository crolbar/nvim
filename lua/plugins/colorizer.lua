local d = {
    rgb_fn   = true;
    hsl_fn   = true;
    css      = true;
    css_fn   = true;
}
return {
    "norcalli/nvim-colorizer.lua",
    ft = {"scss", "css", "html", "nix"},
    opts = {
        '*';
        nix = d,
        css = d,
        scss = d,
        javascript = d,
        html = d,
    }
}