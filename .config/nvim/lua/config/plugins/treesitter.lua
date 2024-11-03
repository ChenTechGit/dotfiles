return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPre", "BufNewFile" },
  build = ":TSUpdate", -- 󰁨 Auto update language parsers when plugin is installed
  dependencies = {
    "windwp/nvim-ts-autotag"
  },
  opts = {
      highlight = {
        enable = true
      },
      --  Enable indentation
      indent = { enable = true },
      --  Enable autotagging (w/ Nvim-ts-autotag plugin)
      autotag = { enable = true },
      --   Ensure these language parsers are installed
      ensure_installed = {
        "json",
        "jsonc",
        "css",
        "bash",
        "lua",
        "python",
        "gitignore",
        "git_rebase",
        "markdown",
        "markdown_inline",
        "rust",
        "desktop"
      },
      -- Incremental selection
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-space>",
          node_incremental = "<C-space>",
          scope_incremental = false,
          node_decremental = "<bs>"
        }
      }
    }
}
