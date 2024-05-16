local wezterm = require("wezterm")
local M = {}
local name = "JetBrains Mono"

M.init = function()
  return name
end

M.activate = function(config)
  config.font = wezterm.font(name)
  -- config.freetype_load_target = "Light"
  -- config.freetype_render_target = "HorizontalLcd"
  config.font_size = 14.0
  config.line_height = 1.2
  config.harfbuzz_features = {}
  config.font_rules = {
    {
      intensity = "Normal",
      italic = false,
      font = wezterm.font("JetBrains Mono", { weight = "Regular" }),
    },
    {
      intensity = "Normal",
      italic = true,
      font = wezterm.font("Operator Mono SSm", { weight = 325, style = "Italic" }),
    },
    {
      intensity = "Bold",
      italic = false,
      font = wezterm.font("JetBrains Mono", { weight = "ExtraBold" }),
    },
    {
      intensity = "Bold",
      italic = true,
      font = wezterm.font("Operator Mono SSm", { weight = "Bold", style = "Italic" }),
    },
  }
end

return M
