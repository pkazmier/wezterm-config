local M = {}
local name = "MiniHues Emerald"

M.init = function()
  return name
end

M.activate = function(config)
  config.color_schemes = config.color_schemes or {}
  config.color_schemes[name] = {
    ansi = { "#294142", "#f2b2c9", "#b5d29b", "#dfc48b", "#8ad4eb", "#d7b9ee", "#8ed8c4", "#868e8e" },
    background = "#0f2728",
    brights = { "#435c5d", "#f2b2c9", "#b5d29b", "#dfc48b", "#8ad4eb", "#d7b9ee", "#8ed8c4", "#a3acac" },
    compose_cursor = "#f5b6a0",
    copy_mode_active_highlight_bg = {
      Color = "#0f2728",
    },
    copy_mode_active_highlight_fg = {
      Color = "#a3acac",
    },
    copy_mode_inactive_highlight_bg = {
      Color = "#b5d29b",
    },
    copy_mode_inactive_highlight_fg = {
      Color = "#0f2728",
    },
    cursor_bg = "#8ad4eb",
    cursor_border = "#8ad4eb",
    cursor_fg = "#004354",
    foreground = "#c0c9c9",
    indexed = {
      [136] = "#f5b6a0",
    },
    quick_select_label_bg = {
      Color = "#f5b6a0",
    },
    quick_select_label_fg = {
      Color = "#0f2728",
    },
    quick_select_match_bg = {
      Color = "#294142",
    },
    quick_select_match_fg = {
      Color = "#8ad4eb",
    },
    scrollbar_thumb = "#294142",
    selection_bg = "#435c5d",
    split = "#435c5d",
  }
  config.color_scheme = name
end

return M
