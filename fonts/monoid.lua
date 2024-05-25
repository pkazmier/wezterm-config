local wezterm = require("wezterm")
local M = {}
local name = "Monoid"

M.init = function()
  return name
end

M.activate = function(config)
  config.font = wezterm.font(name)
  -- config.freetype_load_target = "Light"
  -- config.freetype_render_target = "HorizontalLcd"
  config.font_size = 12.0
  config.line_height = 1.2
  config.harfbuzz_features = {}
  config.font_rules = {}
end

return M
