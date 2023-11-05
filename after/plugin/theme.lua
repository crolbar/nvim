require('nightfox').setup({
  options = {
    transparent = true,
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
vim.opt.laststatus = 3
require('lualine').setup {
  options = {
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch'},
    lualine_c = {'diff', 'diagnostics'},
    lualine_x = {'filetype', 'fileformat', 'filename'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
}

