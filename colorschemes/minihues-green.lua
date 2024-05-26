local M = {}
local name = "MiniHues Green"

M.init = function()
  return name
end

M.activate = function(config)
  config.color_schemes = config.color_schemes or {}
  config.color_schemes[name] = {
    ansi = { "#2b3f48", "#ecb3d5", "#c3ce92", "#e7bf8d", "#86d6e1", "#ccbcf5", "#97d7b7", "#868d91" },
    background = "#12252e",
    brights = { "#455964", "#ecb3d5", "#c3ce92", "#e7bf8d", "#86d6e1", "#ccbcf5", "#97d7b7", "#a3abaf" },
    compose_cursor = "#f6b3ab",
    copy_mode_active_highlight_bg = {
      Color = "#12252e",
    },
    copy_mode_active_highlight_fg = {
      Color = "#a3abaf",
    },
    copy_mode_inactive_highlight_bg = {
      Color = "#c3ce92",
    },
    copy_mode_inactive_highlight_fg = {
      Color = "#12252e",
    },
    cursor_bg = "#86d6e1",
    cursor_border = "#86d6e1",
    cursor_fg = "#004a52",
    foreground = "#c0c8cc",
    indexed = {
      [136] = "#f6b3ab",
    },
    quick_select_label_bg = {
      Color = "#f6b3ab",
    },
    quick_select_label_fg = {
      Color = "#12252e",
    },
    quick_select_match_bg = {
      Color = "#2b3f48",
    },
    quick_select_match_fg = {
      Color = "#86d6e1",
    },
    scrollbar_thumb = "#2b3f48",
    selection_bg = "#455964",
    split = "#455964",
  }
  config.color_scheme = name
end

return M
