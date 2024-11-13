return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = function()
    local lazy_status = require("lazy.status") -- 󰆙 To configure Lazy pending updates count

    require("lualine").setup({
      sections = {
        lualine_x = {
          {
            lazy_status.updates,
            cond = lazy_status.has_updates,
            color = { fg = "#e0af68" }
          },
          { "encoding" },
          { "fileformat" },
          { "filetype" }
        }
      }
    })
  end
}
