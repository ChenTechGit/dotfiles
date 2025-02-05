-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  print(" Downloading Lazy.nvim from  " .. lazyrepo .. " ...")
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })

  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
  print(" Download complete.")
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("config.plugins", {
  install = {
    colorscheme = { "tokyonight-night" }, -- Use prefered colorscheme when auto installing plugins
  },
  checker = {
    enabled = true,
    notify = false
  },
  change_detection = {
    notify = false
  }
})
