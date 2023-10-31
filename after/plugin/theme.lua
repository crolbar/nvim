require('nightfox').setup({
  options = {
    transparent = false,
  },
  palettes = {
      all = {
          comment = "#008040",
          sel0 = "#2D2036",

          blue = { base = "#DE64AC", dim = "#92328F", bright = "#FF79C1" },
          cyan = { base = "#ffffff", dim = "#ffffff", bright = "#ffffff" },

          bg0 = "#191622",
          bg1 = "#191622",
          bg2 = "#191622",
          bg3 = "#191622",
          bg4 = "#191622",
      }

  },
})

vim.cmd("colorscheme carbonfox")

require('lualine').setup()
vim.opt.laststatus = 3
