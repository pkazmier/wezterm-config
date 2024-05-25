local wezterm = require("wezterm")
local M = {}

M.init = function()
  return "Commit Mono"
end

M.activate = function(config)
  config.font = wezterm.font("CommitMono")
  -- config.freetype_load_target = "Light"
  -- config.freetype_render_target = "HorizontalLcd"
  config.font_size = 14.0
  config.line_height = 1.4
  config.harfbuzz_features = { "ss01", "ss02", "cv02", "cv08" }
  config.font_rules = {}
end

return M
