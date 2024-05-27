local M = {}
local name = "MiniHues Olive"

M.init = function()
  return name
end

M.activate = function(config)
  config.color_schemes = config.color_schemes or {}
  config.color_schemes[name] = {
    ansi = { "#314133", "#f0b2cd", "#b9d198", "#e1c28b", "#89d4e8", "#d4baf0", "#90d8c0", "#888e89" },
    background = "#18271a",
    brights = { "#4b5b4d", "#f0b2cd", "#b9d198", "#e1c28b", "#89d4e8", "#d4baf0", "#90d8c0", "#a5aca6" },
    compose_cursor = "#f6b5a3",
    copy_mode_active_highlight_bg = {
      Color = "#18271a",
    },
    copy_mode_active_highlight_fg = {
      Color = "#a5aca6",
    },
    copy_mode_inactive_highlight_bg = {
      Color = "#b9d198",
    },
    copy_mode_inactive_highlight_fg = {
      Color = "#18271a",
    },
    cursor_bg = "#89d4e8",
    cursor_border = "#89d4e8",
    cursor_fg = "#004654",
    foreground = "#c2c9c3",
    indexed = {
      [136] = "#f6b5a3",
    },
    quick_select_label_bg = {
      Color = "#f6b5a3",
    },
    quick_select_label_fg = {
      Color = "#18271a",
    },
    quick_select_match_bg = {
      Color = "#314133",
    },
    quick_select_match_fg = {
      Color = "#89d4e8",
    },
    scrollbar_thumb = "#314133",
    selection_bg = "#4b5b4d",
    split = "#4b5b4d",
  }
  config.color_scheme = name
end

return M
