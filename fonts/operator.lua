local wezterm = require("wezterm")
local M = {}

M.init = function()
  return "Operator Mono"
end

M.activate = function(config)
  config.font = wezterm.font("OperatorMonoSSmLig Nerd Font")
  -- config.freetype_load_target = "Light"
  -- config.freetype_render_target = "HorizontalLcd"
  config.font_size = 14.0
  config.line_height = 1.3
  config.harfbuzz_features = {}
  config.font_rules = {
    {
      intensity = "Normal",
      italic = false,
      font = wezterm.font("OperatorMonoSSmLig Nerd Font", { weight = 325 }),
    },
    {
      intensity = "Normal",
      italic = true,
      font = wezterm.font("OperatorMonoSSmLig Nerd Font", { weight = 325, style = "Italic" }),
    },
    {
      intensity = "Bold",
      italic = false,
      font = wezterm.font("OperatorMonoSSmLig Nerd Font", { weight = "Bold" }),
    },
    {
      intensity = "Bold",
      italic = true,
      font = wezterm.font("OperatorMonoSSmLig Nerd Font", { weight = "Bold", style = "Italic" }),
    },
  }
end

return M
