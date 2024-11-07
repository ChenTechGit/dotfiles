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
keymap.set("n", "<leader>sh", "<C-w>s", { desc = " Split windows horizontally" })   --  Split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "󰨑 Make splits equal size" })       -- 󰨑 Make split windows equal size
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "󰅙 Close current split" })  -- 󰅙 Close current split window

-- 󰓩 Tab managment --
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = " Open new tab" })                      --  Open new tab
keymap.set("n", "<leader>te", ":tabedit ", { desc = " Edit file in new tab" })                    --  Edit file in new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "󰅙 Close current tab" })               -- 󰅙 Close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = " Go to next tab" })                      --  Go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = " Go to previous tab" })                  --  Go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = " Open current buffer in new tab" })  --  Move current buffer to new tab

-- 󰒲 Lazy.nvim --
keymap.set("n", "<leader>lu", "<cmd>Lazy<CR>", { desc = "󰒲 Open Lazy UI" })                        -- 󰒲 Open Lazy UI
keymap.set("n", "<leader>lc", "<cmd>Lazy clean<CR>", { desc = " Clean up unused plugins"})        --  Clean up unused plugins
