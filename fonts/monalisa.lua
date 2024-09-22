local wezterm = require("wezterm")
local M = {}
local name = "MonoLisa"

M.init = function()
  return name
end

M.activate = function(config)
  config.font = wezterm.font(name)
  config.font_size = 14.0
  config.line_height = 1.1
  config.harfbuzz_features = {
    -- "onum",
    "ss02",
    "ss07",
    "ss11",
    "ss14",
    -- "ss16", -- stab-less 'r'
  }
  config.font_rules = {}
end

return M
