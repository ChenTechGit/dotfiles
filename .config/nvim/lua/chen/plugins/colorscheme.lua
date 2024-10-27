return {
  "folke/tokyonight.nvim",
  priority = 1000, -- Make sure to load this before all the other start plugins
  config = function()
    require("tokyonight").setup({
      style = "night",
      transparent = true,
      styles = {
        sidebars = true and "transparent" or "dark",
        floats = true and "transparent" or "dark"
      }
    })

    -- Load the colorscheme
    vim.cmd( [[colorscheme tokyonight]] )
  end,
}
