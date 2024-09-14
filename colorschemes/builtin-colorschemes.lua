local M = {}

-- stylua: ignore
local colorschemes = {
  { label = "Tokyo Night Moon",       value = "Tokyo Night Moon" },
  { label = "Catppuccin Mocha",       value = "Catppuccin Mocha (Gogh)" },
  { label = "Gruvbox Material (Med)", value = "Gruvbox Material (Gogh)" },
  { label = "Sonokai",                value = "Sonokai (Gogh)" },
  { label = "Edge Dark",              value = "Edge Dark (base16)" },
  { label = "Matrix",                 value = "matrix" },
}

M.init = function()
  return colorschemes
end

M.activate = function(config, _, value)
  config.color_scheme = value
end

return M
