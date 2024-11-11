local wezterm = require 'wezterm'
local act = wezterm.action

local palette = {
  foreground = '#d3c6aa',
  background = '#2b3339',
  cursor_bg = '#d3c6aa',
  cursor_fg = '#2b3339',
  cursor_border = '#83c092',
  ansi = {
    '#2b3339',
    '#e67e80',
    '#a7c080',
    '#dbbc7f',
    '#7fbbb3',
    '#d699b6',
    '#83c092',
    '#d3c6aa'
  },
  brights = {
    '#7a8478',
    '#e67e80',
    '#a7c080',
    '#dbbc7f',
    '#7fbbb3',
    '#d699b6',
    '#83c092',
    '#d3c6aa'
  }
}

return {
  font = wezterm.font('JetBrainsMono Nerd Font'),
  font_size = 11.0,
  colors = palette,
  enable_wayland = false,
  enable_tab_bar = false,
  window_decorations = "NONE",
  exit_behavior = "Close",
  window_background_opacity = 0.95,
  window_close_confirmation = "NeverPrompt"
}

