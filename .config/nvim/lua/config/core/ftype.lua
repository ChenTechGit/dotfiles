--  Set filetype to  TOML when editing any .conf files in  Hyprland configuration dir
--  For syntax highlighting

vim.cmd [[
  autocmd BufNewFile,BufRead ~/dotfiles/.config/hypr/*.conf setlocal filetype=toml
  autocmd BufNewFile,BufRead ~/.config/hypr/*.conf setlocal filetype=toml
]]
