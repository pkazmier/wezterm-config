local wezterm = require("wezterm")
local M = {}

M.init = function()
  return "PragmataPro"
end

M.activate = function(config)
  config.font = wezterm.font("PragmataProMonoLiga Nerd Font")
  -- config.freetype_load_target = "Light"
  -- config.freetype_render_target = "HorizontalLcd"
  config.font_size = 14
  config.line_height = 1.3
  config.harfbuzz_features = { "ss13" }
  config.font_rules = {}
end

return M
