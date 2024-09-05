local newfile = "lua vim.ui.input({prompt = 'Enter new file name: '}, function(input) local status, result = pcall(function() vim.cmd('edit ' .. input) end) if not status then print('Cancelled') end end)"
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
          -- Recent files
          {
            icon = " ",
            desc = "Recent files",
            key = "r",
            key_format = " [%s]",
            action = function()
              vim.cmd([[Lazy load telescope.nvim]]) -- Load Telescope
              vim.cmd([[Telescope oldfiles]])
            end
          },
          -- Find file
          {
            icon = " ",
            desc = "Find file",
            key = "f",
            key_format = " [%s]",
            action = function()
              vim.cmd([[Lazy load telescope.nvim]]) -- Load Telescope
              vim.cmd([[Telescope find_files]])
            end
          },
          -- Find text
          {
            icon = " ",
            desc = "Find text",
            key = "g",
            key_format = " [%s]",
            action = function()
              vim.cmd([[Lazy load telescope.nvim]]) -- Load Telescope
              vim.cmd([[Telescope live_grep]])
            end
          },
          {
            icon = "󰉋 ",
            desc = "New file",
            key = "n",
            key_format = " [%s]",
            action = "ene | startinsert"
          },
          -- File tree
          {
            icon = "󰉋 ",
            desc = "File tree",
            key = "t",
            key_format = " [%s]",
            action = "NvimTreeToggle"
          },
          -- Change colorscheme
          {
            icon = " ",
            desc = "Change colorscheme",
            key = "c",
            key_format = " [%s]",
            action = function()
              vim.cmd([[Lazy load telescope.nvim]]) -- Load Telescope
              vim.cmd([[Telescope colorscheme]])
            end
          },
          -- Lazy UI
          {
            icon = "󰒲 ",
            desc = "Lazy UI",
            key = "l",
            key_format = " [%s]",
            action = "Lazy"
          },
          -- Quit
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
