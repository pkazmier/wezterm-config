local M = {}
local name = "MiniHues Lavender"

M.init = function()
  return name
end

M.activate = function(config)
  config.color_schemes = config.color_schemes or {}
  config.color_schemes[name] = {
    ansi = { "#3c394b", "#f4b2c5", "#b1d39f", "#dbc68b", "#8dd3ef", "#dbb8eb", "#8bd9c9", "#8c8c92" },
    background = "#232030",
    brights = { "#575466", "#f4b2c5", "#b1d39f", "#dbc68b", "#8dd3ef", "#dbb8eb", "#8bd9c9", "#aaa9b0" },
    compose_cursor = "#f4b79c",
    copy_mode_active_highlight_bg = {
      Color = "#232030",
    },
    copy_mode_active_highlight_fg = {
      Color = "#aaa9b0",
    },
    copy_mode_inactive_highlight_bg = {
      Color = "#b1d39f",
    },
    copy_mode_inactive_highlight_fg = {
      Color = "#232030",
    },
    cursor_bg = "#8dd3ef",
    cursor_border = "#8dd3ef",
    cursor_fg = "#004053",
    foreground = "#c7c6cd",
    indexed = {
      [136] = "#f4b79c",
    },
    quick_select_label_bg = {
      Color = "#f4b79c",
    },
    quick_select_label_fg = {
      Color = "#232030",
    },
    quick_select_match_bg = {
      Color = "#3c394b",
    },
    quick_select_match_fg = {
      Color = "#8dd3ef",
    },
    scrollbar_thumb = "#3c394b",
    selection_bg = "#575466",
    split = "#575466",
  }
  config.color_scheme = name
end

return M
