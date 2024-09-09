return {
  "folke/which-key.nvim",
  key = "<leader>",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 500
  end
}
