local M = {}
local name = "MiniHues Teal"

M.init = function()
  return name
end

M.activate = function(config)
  config.color_schemes = config.color_schemes or {}
  config.color_schemes[name] = {
    ansi = { "#303d4c", "#f4b1bf", "#abd4a3", "#d6c78b", "#90d1f1", "#deb6e7", "#88d8ce", "#888c92" },
    background = "#172331",
    brights = { "#4a5767", "#f4b1bf", "#abd4a3", "#d6c78b", "#90d1f1", "#deb6e7", "#88d8ce", "#a5aab0" },
    compose_cursor = "#f2b898",
    copy_mode_active_highlight_bg = {
      Color = "#172331",
    },
    copy_mode_active_highlight_fg = {
      Color = "#a5aab0",
    },
    copy_mode_inactive_highlight_bg = {
      Color = "#abd4a3",
    },
    copy_mode_inactive_highlight_fg = {
      Color = "#172331",
    },
    cursor_bg = "#90d1f1",
    cursor_border = "#90d1f1",
    cursor_fg = "#003c52",
    foreground = "#c2c7cd",
    indexed = {
      [136] = "#f2b898",
    },
    quick_select_label_bg = {
      Color = "#f2b898",
    },
    quick_select_label_fg = {
      Color = "#172331",
    },
    quick_select_match_bg = {
      Color = "#303d4c",
    },
    quick_select_match_fg = {
      Color = "#90d1f1",
    },
    scrollbar_thumb = "#303d4c",
    selection_bg = "#4a5767",
    split = "#4a5767",
  }
  config.color_scheme = name
end

return M
