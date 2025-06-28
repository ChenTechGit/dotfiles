return {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,

    --  Setup
    opts = function ()
        require("catppuccin").setup({
            flavour = "macchiato",
            transparent_background = true
        })

        --  Setup

        vim.cmd("colorscheme catppuccin")
    end
}

-- Old Tokyonight theme
-- return {
--   "folke/tokyonight.nvim",
--   priority = 1000,
--   opts = function()
--     local transparent = true --  Enable transparency :D
--
--     --  Setup
--     require("tokyonight").setup({
--       style = "night",
--       transparent = transparent,
--       styles = {
--         sidebars = transparent and "transparent" or "dark",
--         floats = transparent and "transparent" or "dark",
--       }
--     })
--
--     --  Enable colorscheme
--     vim.cmd("colorscheme tokyonight")
--   end
-- }
