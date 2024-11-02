return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 500
  end
}
