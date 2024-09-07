return {
  "stevearc/conform.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local conform = require("conform")

    conform.setup({
      formatters_by_ft = {
        rust = { "rustfmt" },
        python = { "black", "isort" },
        lua = { "stylua" },
        markdown = { "prettier" },
        json = { "prettier" },
        yaml = { "prettier" }
      }
    })

    vim.keymap.set({ "n", "v" }, "<leader>mp", function()
      conform.format({
        lsp_fallback = true,
        async = false,
        timeout_ms = 500
      })
    end, { desc = "Format file or range (In visual mode)" })
  end
}
