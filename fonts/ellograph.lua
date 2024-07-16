local wezterm = require("wezterm")
local M = {}
local name = "Ellograph CF"

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
    -- {
    --   intensity = "Normal",
    --   italic = false,
    --   font = wezterm.font(name, { weight = "Light" }),
    -- },
    -- {
    --   intensity = "Normal",
    --   italic = true,
    --   font = wezterm.font(name, { weight = "Light", style = "Italic" }),
    -- },
    {
      intensity = "Bold",
      italic = false,
      font = wezterm.font(name, { weight = "Black" }),
    },
    {
      intensity = "Bold",
      italic = true,
      font = wezterm.font(name, { weight = "Black", style = "Italic" }),
    },
  }
end

return M
