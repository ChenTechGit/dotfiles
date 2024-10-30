-- Pull in the Wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = {}

-- Configuration
-- Wayland
config.enable_wayland = false -- Wezterm won't show a window if set to true on Wayland

-- Font
config.font = wezterm.font("MesloLGS Nerd Font Propo", { weight = "Medium" })
config.font_size = 11

-- Disable tab bar
config.enable_tab_bar = false

-- Color scheme
config.colors = {
  background = "#1a1b26",
  foreground = "#c0caf5",
  cursor_bg = "#c0caf5",
  cursor_border = "#c0caf5",
  selection_bg = "#a9b1d6",
  selection_fg = "#c0caf5",
  ansi = { "#15161e", "#f7768e", "#9ece6a", "#e0af68", "#7aa2f7", "#bb9af7", "#7dcfff", "#a9b1d6" },
  brights = { "#414868", "#f7768e", "#9ece6a", "#e0af68", "#7aa2f7", "#bb9af7", "#7dcfff", "#c0caf5" }
}

-- Opacity
config.window_background_opacity = 0.8

-- Return config
return config
