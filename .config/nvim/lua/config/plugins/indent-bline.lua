return {
  "lukas-reineke/indent-blankline.nvim",
  event = { "BufReadPost", "BufNewFile" },
  main = "ibl",
  opts = {
    -- indent = { char = "|" }
    -- indent = { char = "┊" }
    indent = { char = "│" }
  }
}
