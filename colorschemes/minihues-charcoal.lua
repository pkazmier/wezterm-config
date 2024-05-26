local M = {}
local name = "MiniHues Charcoal"

M.init = function()
  return name
end

M.activate = function(config)
  config.color_schemes = config.color_schemes or {}
  config.color_schemes[name] = {
    ansi = {
      "#303237",
      "#e09d9e",
      "#8ac19a",
      "#b6b67a",
      "#85b8e1",
      "#d19fc7",
      "#70c2c4",
      "#747c8c",
    },
    background = "#181A1F",
    brights = {
      "#484a50",
      "#e09d9e",
      "#8ac19a",
      "#b6b67a",
      "#85b8e1",
      "#d19fc7",
      "#70c2c4",
      "#8e97a8",
    },
    compose_cursor = "#d6a77c",
    copy_mode_active_highlight_bg = {
      Color = "#181A1F",
    },
    copy_mode_active_highlight_fg = {
      Color = "#8e97a8",
    },
    copy_mode_inactive_highlight_bg = {
      Color = "#8ac19a",
    },
    copy_mode_inactive_highlight_fg = {
      Color = "#181A1F",
    },
    cursor_bg = "#85b8e1",
    cursor_border = "#85b8e1",
    cursor_fg = "#002c49",
    foreground = "#A9B2C3",
    indexed = {
      [136] = "#d6a77c",
    },
    quick_select_label_bg = {
      Color = "#d6a77c",
    },
    quick_select_label_fg = {
      Color = "#181A1F",
    },
    quick_select_match_bg = {
      Color = "#303237",
    },
    quick_select_match_fg = {
      Color = "#85b8e1",
    },
    scrollbar_thumb = "#303237",
    selection_bg = "#484a50",
    split = "#484a50",
  }
  config.color_scheme = name
end

return M
