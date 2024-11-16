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
          { "filetype",
            fmt = function(filename)
              local file_path = vim.fn.expand('%:p')  --  Get the full path of the current file

              if string.match(file_path, '^/home/[^/]+/dotfiles/.config/hypr/.*%.conf$') or string.match(file_path, '^/home/[^/]+/.config/hypr/.*%.conf$') then
                return 'hyprland-conf'  -- 󰦪 Display "hyprland-conf" for all .conf files in the specified directories
              end

              return filename  --  Otherwise, return the actual filename
            end
          }
        }
      }
    })
  end
}
