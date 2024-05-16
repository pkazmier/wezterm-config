local M = {}

M.init = function()
  local leadings = { "Default" }
  for i = 0.9, 1.4, 0.1 do
    table.insert(leadings, { label = i .. "x", value = i })
  end
  return leadings
end

M.activate = function(config, _, value)
  config.line_height = value
end

return M
