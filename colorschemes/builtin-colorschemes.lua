local M = {}

-- stylua: ignore
local colorschemes = {
  { label = "Ayu Dark",         value = "Ayu Dark (Gogh)" },
  { label = "Tokyo Night Moon", value = "Tokyo Night Moon"},
  { label = "Catppuccin Mocha", value = "Catppuccin Mocha"},
  { label = "Oxocarbon Dark",   value = "Oxocarbon Dark (Gogh)" },
  { label = "Matrix",           value = "matrix" },
}

M.init = function()
  return colorschemes
end

M.activate = function(config, _, value)
  config.color_scheme = value
end

return M
