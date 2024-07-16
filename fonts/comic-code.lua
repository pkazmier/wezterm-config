local wezterm = require("wezterm")
local M = {}

M.init = function()
  return "Comic Code"
end

M.activate = function(config)
  config.font = wezterm.font("Comic Code Ligatures")
  -- config.freetype_load_target = "Light"
  -- config.freetype_render_target = "HorizontalLcd"
  config.font_size = 14.0
  config.line_height = 1.3
  config.harfbuzz_features = {}
  config.font_rules = {}
end

return M
