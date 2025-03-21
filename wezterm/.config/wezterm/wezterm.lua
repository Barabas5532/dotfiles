local wezterm = require 'wezterm'
local config = wezterm.config_builder()

-- config.font = wezterm.font 'Hack'
-- config.font_size = 11.25 -- pt, same as 15 px

config.font = wezterm.font 'Iosevka Term SS18'
config.font_size = 12
config.line_height = 0.90
-- Disable ligatures
config.harfbuzz_features = { 'calt=0', 'clig=0', 'liga=0' }

-- Disable undesirable features
-- Using tmux instead
config.enable_tab_bar = false
config.scrollback_lines = 0
config.window_padding = {
  left = "4pt",
  right = "4pt",
  top = 0,
  bottom = 0,
}

config.color_scheme = 'Solarized (light) (terminal.sexy)'
config.force_reverse_video_cursor = true

config.term = "wezterm"


return config
