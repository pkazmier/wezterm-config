local wezterm = require("wezterm")
local M = {}
local name = "Gruvbox Material (Hard)"

M.init = function()
  return name
end

M.activate = function(config)
  config.color_schemes = config.color_schemes or {}
  local hard = wezterm.color.get_builtin_schemes()["Gruvbox Material (Gogh)"]

  -- Overrides to change GM Med to GM Hard
  hard.background = "#1D2021"
  hard.cursor_fg = "#1D2021"
  hard.ansi[1] = "#32302F"
  hard.brights[1] = "#32302F"

  config.color_schemes[name] = hard
  config.color_scheme = name
end

return M
