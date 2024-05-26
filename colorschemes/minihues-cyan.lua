local M = {}
local name = "MiniHues Cyan"

M.init = function()
  return name
end

M.activate = function(config)
  config.color_schemes = config.color_schemes or {}
  config.color_schemes[name] = {
    ansi = { "#1c414f", "#f6b2b0", "#9cd7b1", "#c8cc8f", "#9cccf8", "#e9b3da", "#85d7dc", "#868e90" },
    background = "#002734",
    brights = { "#375c6b", "#f6b2b0", "#9cd7b1", "#c8cc8f", "#9cccf8", "#e9b3da", "#85d7dc", "#a3abae" },
    compose_cursor = "#ebbd8f",
    copy_mode_active_highlight_bg = {
      Color = "#002734",
    },
    copy_mode_active_highlight_fg = {
      Color = "#a3abae",
    },
    copy_mode_inactive_highlight_bg = {
      Color = "#9cd7b1",
    },
    copy_mode_inactive_highlight_fg = {
      Color = "#002734",
    },
    cursor_bg = "#9cccf8",
    cursor_border = "#9cccf8",
    cursor_fg = "#002c4c",
    foreground = "#c0c8cb",
    indexed = {
      [136] = "#ebbd8f",
    },
    quick_select_label_bg = {
      Color = "#ebbd8f",
    },
    quick_select_label_fg = {
      Color = "#002734",
    },
    quick_select_match_bg = {
      Color = "#1c414f",
    },
    quick_select_match_fg = {
      Color = "#9cccf8",
    },
    scrollbar_thumb = "#1c414f",
    selection_bg = "#375c6b",
    split = "#375c6b",
  }
  config.color_scheme = name
end

return M
