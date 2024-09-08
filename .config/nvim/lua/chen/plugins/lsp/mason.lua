return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim"
  },
  event = { "BufReadPre", "BufNewFile" },
  keys = { "<leader>um" },
  config = function()
    local mason = require("mason")                     -- Import Mason
    local mason_lspconfig = require("mason-lspconfig") -- Import Mason-lspconfig
    local mason_tool_installer = require("mason-tool-installer")

    -- Enable Mason and configure icons
    mason.setup({
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗"
        }
      }
    })

    mason_lspconfig.setup({
      -- List of servers for mason to install
      ensure_installed = {
        -- LSP's
        "rust_analyzer",
        "pylsp",
        "lua_ls"
      },

      -- Auto-install confiured servers (with lspconfig)
      automatic_installation = true, -- Not the same as ensure_installed
    })

    mason_tool_installer.setup({
      ensure_installed = {
        "rustywind",
        "prettier",
        "stylua",
        "black",
        "isort"
      }
    })

    -- Keymaps
    local Keymap = vim.keymap

    Keymap.set("n", "<leader>um", "<cmd>Mason<CR>", { desc = "Open Mason UI" })
  end,
}
