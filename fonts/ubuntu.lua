local wezterm = require("wezterm")
local M = {}

M.init = function()
  return "Ubuntu Mono"
end

M.activate = function(config)
  config.font = wezterm.font("UbuntuSansM Nerd Font")
  -- config.freetype_load_target = "Light"
  -- config.freetype_render_target = "HorizontalLcd"
  config.font_size = 15.0
  config.line_height = 1.3
  config.harfbuzz_features = {}
  config.font_rules = {
    {
      intensity = "Normal",
      italic = false,
      font = wezterm.font("UbuntuSansM Nerd Font", { weight = "Regular" }),
    },
    {
      intensity = "Normal",
      italic = true,
      font = wezterm.font("UbuntuSansM Nerd Font", { weight = "Regular", style = "Italic" }),
    },
    {
      intensity = "Bold",
      italic = false,
      font = wezterm.font("UbuntuSansM Nerd Font", { weight = "Bold" }),
    },
    {
      intensity = "Bold",
      italic = true,
      font = wezterm.font("UbuntuSansM Nerd Font", { weight = "Bold", style = "Italic" }),
    },
  }
end

return M
