-- Pull in the Wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = {}

-- Configuration
config.enable_wayland = false -- Wezterm won't show a window if set to true

-- Return config
return config
