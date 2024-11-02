return {
  "nvimdev/dashboard-nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  event = "VimEnter",

  config = function()
    local dashboard = require("dashboard")
    dashboard.setup({
      theme = "doom",
      config = {
        header = {
          [[                                                       ]],
          [[ ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗]],
          [[ ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║]],
          [[ ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║]],
          [[ ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║]],
          [[ ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║]],
          [[ ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝]],
          [[                                                       ]],
          [[                                                       ]]
        },
        center = {
          --  Recent files
          {
            icon = " ",
            desc = "Recent files",
            key = "r",
            key_format = " [%s]",
            action = function()
              vim.cmd([[Telescope oldfiles]])
            end
          },
          --  Find file
          {
            icon = " ",
            desc = "Find file",
            key = "f",
            key_format = " [%s]",
            action = function()
              vim.cmd([[Telescope find_files]])
            end
          },
          --   Find text
          {
            icon = " ",
            desc = "Find text",
            key = "g",
            key_format = " [%s]",
            action = function()
              vim.cmd([[Telescope live_grep]])
            end
          },
          --  New file
          {
            icon = " ",
            desc = "New file",
            key = "n",
            key_format = " [%s]",
            action = "ene | startinsert"
          },
          -- 󰉋 File tree
          {
            icon = "󰉋 ",
            desc = "File tree",
            key = "t",
            key_format = " [%s]",
            action = "NvimTreeToggle"
          },
          --  Change colorscheme
          {
            icon = " ",
            desc = "Change colorscheme",
            key = "c",
            key_format = " [%s]",
            action = function()
              vim.cmd([[Telescope colorscheme]])
            end
          },
          -- 󰒲 Lazy UI
          {
            icon = "󰒲 ",
            desc = "Lazy UI",
            key = "l",
            key_format = " [%s]",
            action = "Lazy"
          },
          --  Quit
          {
            icon = " ",
            desc = "Quit",
            key = "q",
            key_format = " [%s]",
            action = "qa"
          }
        }
      }
    })
  end,
}
