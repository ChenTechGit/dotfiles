--  Change file types when openning specific files

vim.cmd [[
  "  Hyprland
  autocmd BufNewFile,BufRead ~/dotfiles/.config/hypr/*.conf setlocal filetype=toml
  autocmd BufNewFile,BufRead ~/.config/hypr/*.conf setlocal filetype=toml

  "  ~/.local/bin
  autocmd BufNewFile,BufRead ~/dotfiles/.local/bin/* setlocal filetype=sh
  autocmd BufNewFile,BufRead ~/.local/bin/* setlocal filetype=sh
]]
