local wezterm = require("wezterm")
local M = {}

M.init = function()
  return "Codelia"
end

M.activate = function(config)
  config.font = wezterm.font("Codelia Ligatures")

  -- config.freetype_load_target = "Light"
  -- config.freetype_render_target = "HorizontalLcd"
  config.font_size = 13.0
  config.line_height = 1.2
  config.harfbuzz_features = {}
  config.font_rules = {}
end

return M
