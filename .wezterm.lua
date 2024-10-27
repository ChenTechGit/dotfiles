-- Pull in the Wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = {}

-- Configuration
-- Wayland
config.enable_wayland = false -- Wezterm won't show a window if set to true

-- Font
config.font = wezterm.font("MesloLGS Nerd Font Mono")
config.font_size = 11

-- Disable tab bar
config.enable_tab_bar = false

-- Return config
return config
