local M = {}
local name = "MiniHues Nightowl"

M.init = function()
  return name
end

M.activate = function(config)
  config.color_schemes = config.color_schemes or {}
  config.color_schemes[name] = {
    ansi = { "#1d3850", "#f5b1bb", "#a7d5a6", "#d3c88b", "#92d0f3", "#e1b5e4", "#87d8d1", "#838b8e" },
    background = "#021d33",
    brights = { "#38546e", "#f5b1bb", "#a7d5a6", "#d3c88b", "#92d0f3", "#e1b5e4", "#87d8d1", "#a2a9ac" },
    compose_cursor = "#f0b995",
    copy_mode_active_highlight_bg = {
      Color = "#021d33",
    },
    copy_mode_active_highlight_fg = {
      Color = "#a2a9ac",
    },
    copy_mode_inactive_highlight_bg = {
      Color = "#a7d5a6",
    },
    copy_mode_inactive_highlight_fg = {
      Color = "#021d33",
    },
    cursor_bg = "#92d0f3",
    cursor_border = "#92d0f3",
    cursor_fg = "#00364d",
    foreground = "#c0c8cb",
    indexed = {
      [136] = "#f0b995",
    },
    quick_select_label_bg = {
      Color = "#f0b995",
    },
    quick_select_label_fg = {
      Color = "#021d33",
    },
    quick_select_match_bg = {
      Color = "#1d3850",
    },
    quick_select_match_fg = {
      Color = "#92d0f3",
    },
    scrollbar_thumb = "#1d3850",
    selection_bg = "#38546e",
    split = "#38546e",
  }
  config.color_scheme = name
end

return M
