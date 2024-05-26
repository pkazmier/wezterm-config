local M = {}
local name = "MiniHues Blue"

M.init = function()
  return name
end

M.activate = function(config)
  config.color_schemes = config.color_schemes or {}
  config.color_schemes[name] = {
    ansi = { "#1b3651", "#f5b1b9", "#a5d5a8", "#d1c98c", "#94cff4", "#e2b5e3", "#86d8d3", "#838a8d" },
    background = "#011A33",
    brights = { "#37526f", "#f5b1b9", "#a5d5a8", "#d1c98c", "#94cff4", "#e2b5e3", "#86d8d3", "#a1a9ac" },
    compose_cursor = "#efba94",
    copy_mode_active_highlight_bg = {
      Color = "#011A33",
    },
    copy_mode_active_highlight_fg = {
      Color = "#a1a9ac",
    },
    copy_mode_inactive_highlight_bg = {
      Color = "#a5d5a8",
    },
    copy_mode_inactive_highlight_fg = {
      Color = "#011A33",
    },
    cursor_bg = "#94cff4",
    cursor_border = "#94cff4",
    cursor_fg = "#00334b",
    foreground = "#c0c8cb",
    indexed = {
      [136] = "#efba94",
    },
    quick_select_label_bg = {
      Color = "#efba94",
    },
    quick_select_label_fg = {
      Color = "#011A33",
    },
    quick_select_match_bg = {
      Color = "#1b3651",
    },
    quick_select_match_fg = {
      Color = "#94cff4",
    },
    scrollbar_thumb = "#1b3651",
    selection_bg = "#37526f",
    split = "#37526f",
  }
  config.color_scheme = name
end

return M
