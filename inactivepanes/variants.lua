local M = {}

-- stylua: ignore
local variants = {
  "Default",
  { label = "Dark",   value = { saturation = 0.8, brightness = 0.5 } },
  { label = "Darker", value = { saturation = 0.8, brightness = 0.3 } },
}

M.init = function()
  return variants
end

M.activate = function(config, _, value)
  config.inactive_pane_hsb = value
end

return M
