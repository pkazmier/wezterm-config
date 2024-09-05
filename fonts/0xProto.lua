local wezterm = require("wezterm")
local M = {}

M.init = function()
  return "0xProto"
end

M.activate = function(config)
  config.font = wezterm.font("0xProto")

  -- config.freetype_load_target = "Light"
  -- config.freetype_render_target = "HorizontalLcd"
  config.font_size = 14.0
  config.line_height = 1.3
  config.harfbuzz_features = { "ss01=1" }
  config.font_rules = {}
end

return M
