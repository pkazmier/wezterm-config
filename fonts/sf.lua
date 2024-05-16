local wezterm = require("wezterm")
local M = {}
local name = "SF Mono"

M.init = function()
  return name
end

M.activate = function(config)
  config.font = wezterm.font(name)
  -- config.freetype_load_target = "Light"
  -- config.freetype_render_target = "HorizontalLcd"
  config.font_size = 14.0
  config.line_height = 1.3
  config.harfbuzz_features = {}
  config.font_rules = {
    {
      intensity = "Normal",
      italic = false,
      font = wezterm.font("SF Mono", { weight = "Regular" }),
    },
    {
      intensity = "Normal",
      italic = true,
      font = wezterm.font("SF Mono", { weight = "Regular", style = "Italic" }),
    },
    {
      intensity = "Bold",
      italic = false,
      font = wezterm.font("SF Mono", { weight = "Black" }),
    },
    {
      intensity = "Bold",
      italic = true,
      font = wezterm.font("SF Mono", { weight = "Black", style = "Italic" }),
    },
  }
end

return M
