return {
  "nvim-tree/nvim-tree.lua",
  dependencies = "nvim-tree/nvim-web-devicons",
  -- 󰑓 Load the plugin when one of these keymaps are used
  keys = {
    "<leader>ee",
    "<leader>ef",
    "<leader>ec",
    "<leader>er"
  },
  -- 󰑓 Load the plugin when one of these commands are used
  cmd = {
    "NvimTreeClipboard",
    "NvimTreeClose",
    "NvimTreeCollapse",
    "NvimTreeCollapseKeepBuffers",
    "NvimTreeFindFile",
    "NvimTreeFocus",
    "NvimTreeHiTest",
    "NvimTreeOpen",
    "NvimTreeRefresh",
    "NvimTreeResize",
    "NvimTreeToggle"
  },
  opts = function()
    local nvimtree = require("nvim-tree")

    --  Recommended settings from Nvim-tree documentation
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    nvimtree.setup({
      view = {
        width = 35
      },
      renderer = {
        indent_markers = {
          enable = true
        },
        icons = {
          glyphs = {
            folder = {
              arrow_closed = "",
              arrow_open = ""
            },
          }
        }
      },

      actions = {
        open_file = {
          window_picker = {
            enable = false
          }
        }
      },
      git = {
        ignore = false
      }
    })

    --  Set keymaps
    local keymap = vim.keymap -- For conciseness

    keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", { desc = "󰉋 Toggle file explorer" })                             -- 󰉋 Toggle file explorer
    keymap.set("n", "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>", { desc = " Toggle file explorer on current file" })     --  Toggle file explorer on current file
    keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "󰅙 Collapse file explorer" })                         -- 󰅙 Collapse file explorer
    keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "󰑓 Refresh file explorer" })                           -- 󰑓 Refresh file explorer
  end
}
