local M = {}
local name = "MiniHues Slate"

M.init = function()
  return name
end

M.activate = function(config)
  config.color_schemes = config.color_schemes or {}
  config.color_schemes[name] = {
    ansi = { "#1c2231", "#f7b3b3", "#9fd7af", "#cbcc8f", "#9acef8", "#e8b4dd", "#86d7da", "#c4c7cd" },
    background = "#1c2231",
    brights = { "#353b4c", "#f7b3b3", "#9fd7af", "#cbcc8f", "#9acef8", "#e8b4dd", "#86d7da", "#a7aab0" },
    compose_cursor = "#edbc91",
    copy_mode_active_highlight_bg = {
      Color = "#1c2231",
    },
    copy_mode_active_highlight_fg = {
      Color = "#a7aab0",
    },
    copy_mode_inactive_highlight_bg = {
      Color = "#9fd7af",
    },
    copy_mode_inactive_highlight_fg = {
      Color = "#1c2231",
    },
    cursor_bg = "#9acef8",
    cursor_border = "#9acef8",
    cursor_fg = "#002f4e",
    foreground = "#c4c7cd",
    indexed = {
      [136] = "#edbc91",
    },
    quick_select_label_bg = {
      Color = "#edbc91",
    },
    quick_select_label_fg = {
      Color = "#1c2231",
    },
    quick_select_match_bg = {
      Color = "#353b4c",
    },
    quick_select_match_fg = {
      Color = "#9acef8",
    },
    scrollbar_thumb = "#353b4c",
    selection_bg = "#4f5667",
    split = "#4f5667",
  }

  config.color_scheme = name
end

return M
