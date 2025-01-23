local opt = vim.opt -- For conciseness

--  Line number --
opt.number = true

-- 󱁐 Tabs & indentation --
opt.tabstop =  4          -- Use 4 spaces for tabs (Prettier default)
opt.shiftwidth = 4        -- Use 4 spaces for indent width
opt.expandtab = true      -- Expand tab to spaces
opt.autoindent = true     -- Copy indent from current line when starting new one

opt.wrap = false

--  Search settings --
opt.ignorecase = true     -- Case-insensitive searching
opt.smartcase = true      -- Do case-sensitive searching when the search includes an upercase character

--  UI --
opt.termguicolors = true  -- If set to true colorschemes will work correctly
opt.background = "dark"   -- Colorschemes that support light and dark will default to dark
opt.signcolumn = "yes"    -- Show sign column so that ext doesn't shift
opt.cursorline = true     -- Cursor line!

--   Backspace --
opt.backspace = "indent,eol,start" -- Allow backspace on indent, end of line or insert mode start position

--  Clipboard --
opt.clipboard:append("unnamedplus") -- Use system clipboard as default register

-- 󰨑 Split windows --
opt.splitright = true -- Split vertical window to the right by default
opt.splitbelow = true -- Split horizontal window to the bottom by default
