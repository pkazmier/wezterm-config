local wezterm = require("wezterm")
local M = {}
local name = "Source Code Pro"

M.init = function()
  return name
end

M.activate = function(config)
  config.font = wezterm.font(name)
  -- config.freetype_load_target = "Light"
  -- config.freetype_render_target = "HorizontalLcd"
  config.font_size = 14.0
  config.line_height = 1.25
  config.harfbuzz_features = {}
  config.font_rules = {
    {
      intensity = "Bold",
      italic = false,
      font = wezterm.font("Source Code Pro", { weight = "Black" }),
    },
    {
      intensity = "Bold",
      italic = true,
      font = wezterm.font("Source Code Pro", { weight = "Black", style = "Italic" }),
    },
  }
end

return M
