return {
  "folke/todo-comments.nvim",
  event = { "BufReadPre", "InsertCharPre" },
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = function()
    local todo_comments = require("todo-comments")

    --  Set keymaps
    local keymap = vim.keymap -- For conciseness

    keymap.set("n", "]t", function()
      todo_comments.jump_next()
    end, { desc = " Next todo comment" })

    keymap.set("n", "[t", function()
      todo_comments.jump_prev()
    end, { desc = " Previous todo comment" })

    todo_comments.setup()
  end,
}
