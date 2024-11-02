-- Set leader key --
vim.g.mapleader = " "

-- Set keymaps --
local keymap = vim.keymap -- For conciseness

keymap.set("n", "<leader>nh", "<cmd>nohl<CR>", { desc = "Clear search highlights" })

-- Increment/decrement numbers --
keymap.set("n", "<leader>+", "<C-a>", { desc = " Increment number" }) --  Increment
keymap.set("n", "<leader>-", "<C-x>", { desc = " Decrement number" }) --  Decrement

--  Window managment --
keymap.set("n", "<leader>sv", "<C-w>v", { desc = " Split windows vertically" })   --  Split window vertically
keymap.set("n", "<leader>", "<C-w>s", { desc = " Split windows horizontally" })   --  Split window horizontally
keymap.set("n", "<leader>", "<C-w>=", { desc = "󰨑 Make splits equal size" })       -- 󰨑 Make split windows equal size
keymap.set("n", "<leader>", "<cmd>close<CR>", { desc = "󰅙 Close current split" })  -- 󰅙 Close current split window

-- 󰓩 Tab managment --
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = " Open new tab" })                      --  Open new tab
keymap.set("n", "<leader>te", ":tabedit ", { desc = " Edit file in new tab" })                    --  Edit file in new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "󰅙 Close current tab" })               -- 󰅙 Close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = " Go to next tab" })                      --  Go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = " Go to previous tab" })                  --  Go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = " Open current buffer in new tab" })  --  Move current buffer to new tab
