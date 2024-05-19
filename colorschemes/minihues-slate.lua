local M = {}
local name = "MiniHues - slate"

M.init = function()
  return name
end

M.activate = function(config)
  config.color_schemes = config.color_schemes or {}
  config.color_schemes[name] = {
    ansi = { "#1a2331", "#f6b2ba", "#a6d5a8", "#d1c98c", "#94cff4", "#e3b5e3", "#87d8d3", "#c3c7cd" },
    background = "#1a2331",
    brights = { "#333c4c", "#f6b2ba", "#a6d5a8", "#d1c98c", "#94cff4", "#e3b5e3", "#87d8d3", "#a6aab0" },
    compose_cursor = "#f0ba94",
    copy_mode_active_highlight_bg = {
      Color = "#1a2331",
    },
    copy_mode_active_highlight_fg = {
      Color = "#a6aab0",
    },
    copy_mode_inactive_highlight_bg = {
      Color = "#a6d5a8",
    },
    copy_mode_inactive_highlight_fg = {
      Color = "#1a2331",
    },
    cursor_bg = "#94cff4",
    cursor_border = "#94cff4",
    cursor_fg = "#003751",
    foreground = "#c3c7cd",
    indexed = {
      [136] = "#f0ba94",
    },
    quick_select_label_bg = {
      Color = "#f0ba94",
    },
    quick_select_label_fg = {
      Color = "#1a2331",
    },
    quick_select_match_bg = {
      Color = "#333c4c",
    },
    quick_select_match_fg = {
      Color = "#94cff4",
    },
    scrollbar_thumb = "#333c4c",
    selection_bg = "#4c5767",
    split = "#4c5767",
  }
  config.color_scheme = name
end

return M
