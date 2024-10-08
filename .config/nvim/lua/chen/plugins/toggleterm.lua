return {
  "akinsho/toggleterm.nvim",
  keys = {
    "<leader>ch",
    "<leader>cf",
    "<leader>ct"
  },
  config = function()
    local toggleterm = require("toggleterm")

    -- Configure Toggleterm
    toggleterm.setup({
      size = 19,
      shade_filetypes = {},
      shade_terminals = true,
      shading_factor = 1,
      start_in_insert = true,
    })

    -- Custom terminals
    local terminal = require("toggleterm.terminal").Terminal
    local btop = terminal:new({ cmd = "btop", direction="float", hidden = true})

    function _btop_toggle()
      btop:toggle()
    end

    -- Keymaps
    local keymap = vim.keymap

    keymap.set("n", "<leader>ch", "<cmd>ToggleTerm direction=horizontal<CR>", { desc="Split terminal horizontaly" }) -- Split terminal horizontaly
    keymap.set("n", "<leader>cf", "<cmd>ToggleTerm direction=float<CR>", { desc="Create a floatting terminal" }) -- Create a floatting terminal
    vim.api.nvim_set_keymap("n", "<leader>ct", "<cmd>lua _btop_toggle()<CR>", {noremap = true, silent = true}) -- Create a floating terminal with Btop in it
  end
}
