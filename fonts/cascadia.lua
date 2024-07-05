local wezterm = require("wezterm")
local M = {}
local name = "Cascadia Code NF"

M.init = function()
  return name
end

M.activate = function(config)
  config.font = wezterm.font(name)
  config.font_size = 14.0
  config.line_height = 1.3
  config.harfbuzz_features = { "calt", "ss01" }
  config.font_rules = {
    {
      intensity = "Normal",
      italic = false,
      font = wezterm.font("Cascadia Code NF", { weight = "Light" }),
    },
    {
      intensity = "Normal",
      italic = true,
      font = wezterm.font("Cascadia Code NF", { weight = "Light", style = "Italic" }),
    },
  }
end

return M
