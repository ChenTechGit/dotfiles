return {
  "folke/noice.nvim",
  event = "VeryLazy",
  dependencies = {
    "MunifTanjim/nui.nvim",
    "rcarriga/nvim-notify"
  },
  config = function()
    local noice = require("noice")
    local notify = require("notify")

    noice.setup() -- Configure Noice

    notify.setup({
      on_open = function()
        vim.cmd([[ :nohlsearch ]])
      end,
    })

    -- Keymaps
    local keymap = vim.keymap

    keymap.set("n", "<leader>nd", ":NoiceDismiss<CR>", { desc = "Dismiss Noice message"} ) -- Dismiss Noice message
  end
}
