return {
  "folke/noice.nvim",
  event = "VeryLazy",
  dependencies = {
    "MunifTanjim/nui.nvim",
    "rcarriga/nvim-notify"
  },
  keys = {
    { "<leader>nd", "<cmd>NoiceDismiss<CR>", desc = "Dismiss Noice message" } -- Dismiss Noice message
  },
  opts = function()
    local noice = require("noice")
    local notify = require("notify")

    noice.setup() --  Configure Noice

    notify.setup({
      background_colour="#000000",
      on_open = function()
        vim.cmd([[ :nohlsearch ]])
      end,
    })

    -- Keymaps
    local keymap = vim.keymap

  end
}
