local M = {}
local name = "MiniHues Maroon"

M.init = function()
  return name
end

M.activate = function(config)
  config.color_schemes = config.color_schemes or {}
  config.color_schemes[name] = {
    ansi = { "#463642", "#f2b1c6", "#b2d29d", "#dcc48a", "#8bd2ed", "#d9b8ec", "#8bd8c7", "#908a8f" },
    background = "#2c1d28",
    brights = { "#61505c", "#f2b1c6", "#b2d29d", "#dcc48a", "#8bd2ed", "#d9b8ec", "#8bd8c7", "#aea7ac" },
    compose_cursor = "#f4b69d",
    copy_mode_active_highlight_bg = {
      Color = "#2c1d28",
    },
    copy_mode_active_highlight_fg = {
      Color = "#aea7ac",
    },
    copy_mode_inactive_highlight_bg = {
      Color = "#b2d29d",
    },
    copy_mode_inactive_highlight_fg = {
      Color = "#2c1d28",
    },
    cursor_bg = "#8bd2ed",
    cursor_border = "#8bd2ed",
    cursor_fg = "#004154",
    foreground = "#cbc4c9",
    indexed = {
      [136] = "#f4b69d",
    },
    quick_select_label_bg = {
      Color = "#f4b69d",
    },
    quick_select_label_fg = {
      Color = "#2c1d28",
    },
    quick_select_match_bg = {
      Color = "#463642",
    },
    quick_select_match_fg = {
      Color = "#8bd2ed",
    },
    scrollbar_thumb = "#463642",
    selection_bg = "#61505c",
    split = "#61505c",
  }
  config.color_scheme = name
end

return M
