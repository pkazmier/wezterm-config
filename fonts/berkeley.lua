local wezterm = require("wezterm")
local M = {}
local name = "Berkeley Mono"

M.init = function()
  return name
end

M.activate = function(config)
  config.font = wezterm.font(name)
  -- config.freetype_load_target = "Light"
  -- config.freetype_render_target = "HorizontalLcd"
  config.font_size = 14.0
  config.line_height = 1.3
  config.harfbuzz_features = { "ss02=1" }
  config.font_rules = {}
end

return M
