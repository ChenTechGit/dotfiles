return {
  'MeanderingProgrammer/render-markdown.nvim',
  ft = "markdown",
  keys = {
    { "<leader>mt", "<cmd>RenderMarkdownToggle<CR>" }
  },
  cmd = "RenderMarkdown",
  dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' },

  opts = function()
    local rmd = require("render-markdown")

    vim.api.nvim_create_user_command("RenderMarkdownToggle", function()
      rmd.toggle()
    end, { desc = "Toggle RenderMarkdown plugin" })
  end
}
