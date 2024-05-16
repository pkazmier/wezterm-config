local wezterm = require("wezterm")
local M = {}
local name = "Monaspace Radon"

M.init = function()
  return name
end

M.activate = function(config)
  config.font = wezterm.font(name)
  -- config.freetype_load_target = "Light"
  -- config.freetype_render_target = "HorizontalLcd"
  config.font_size = 14.0
  config.line_height = 1.3
  config.harfbuzz_features = { "calt", "liga", "ss01", "ss02", "ss03", "ss04", "ss05", "ss06", "ss07", "ss08" }
  config.font_rules = {
    {
      intensity = "Normal",
      italic = true,
      font = wezterm.font("Monaspace Neon", { weight = "Regular" }),
    },
    {
      intensity = "Bold",
      italic = false,
      font = wezterm.font("Monaspace Radon", { weight = "ExtraBold" }),
    },
    {
      intensity = "Bold",
      italic = true,
      font = wezterm.font("Monaspace Neon", { weight = "ExtraBold" }),
    },
  }
end

return M
