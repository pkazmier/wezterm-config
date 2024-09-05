local M = {}
local name = "MiniHues Purple"

M.init = function()
  return name
end

M.activate = function(config)
  config.color_schemes = config.color_schemes or {}
  config.color_schemes[name] = {
    ansi = { "#2f2b42", "#e4a6c1", "#aec58d", "#d6b680", "#7cc8dc", "#c8aee4", "#85ccb4", "#7b8184" },
    background = "#151025",
    brights = { "#4a455e", "#e4a6c1", "#aec58d", "#d6b680", "#7cc8dc", "#c8aee4", "#85ccb4", "#999ea1" },
    compose_cursor = "#e9a998",
    copy_mode_active_highlight_bg = {
      Color = "#151025",
    },
    copy_mode_active_highlight_fg = {
      Color = "#999ea1",
    },
    copy_mode_inactive_highlight_bg = {
      Color = "#aec58d",
    },
    copy_mode_inactive_highlight_fg = {
      Color = "#151025",
    },
    cursor_bg = "#7cc8dc",
    cursor_border = "#7cc8dc",
    cursor_fg = "#00404d",
    foreground = "#B6BCBF",
    indexed = {
      [136] = "#e9a998",
    },
    quick_select_label_bg = {
      Color = "#e9a998",
    },
    quick_select_label_fg = {
      Color = "#151025",
    },
    quick_select_match_bg = {
      Color = "#2f2b42",
    },
    quick_select_match_fg = {
      Color = "#7cc8dc",
    },
    scrollbar_thumb = "#2f2b42",
    selection_bg = "#4a455e",
    split = "#4a455e",
  }
  config.color_scheme = name
end

return M
