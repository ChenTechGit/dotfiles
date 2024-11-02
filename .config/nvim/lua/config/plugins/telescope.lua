return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" }
  },
  -- 󰑓 Load Telescope when one of these keymaps are used
  keys = {
    "<leader>ff",
    "<leader>fr",
    "<leader>fs",
    "<leader>fc",
    "<leader>ft"
  },
  -- 󰑓 Load Telescope when the user uses the Telescope command
  cmd = { "Telescope" },

  opts = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")

    telescope.setup({
      defaults = {
        path_display = { "smart" },
        mappings = {
          i = {
            ["<C-k>"] = actions.move_selection_previous,   --  Move to previous result
            ["<C-j>"] = actions.move_selection_next,       --  Move to next result
          }
        }
      }
    })

    -- 󰑓 Load FZF extension (will improve sorting performance (according to Josean Martinez))
    telescope.load_extension("fzf")

    --  Set keymaps
    local keymap = vim.keymap -- For conciseness

    keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = " Fuzzy find files in cwd" })           --  Fuzzy find files in cwd
    keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = " Fuzzy find recent files" })             --  Fuzzy find recent files
    keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", { desc = "󰉋 Find string in cwd" })                 -- 󰉋 Find string in cwd
    keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = " Find string under cursor in cwd" })  --  Find string under cursor in cwd
    keymap.set("n", "<leader>ft", "<cmd>TodoTelescope<cr>", { desc = " Find todos" })                               --  Find todos

  end
}
