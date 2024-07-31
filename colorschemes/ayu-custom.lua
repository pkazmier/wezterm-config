local M = {}
local name = "Ayu Custom"

M.init = function()
  return name
end

M.activate = function(config)
  config.color_schemes = config.color_schemes or {}
  config.color_schemes[name] = {
    ansi = {
      "#0b0b12",
      "#EB788B",
      "#70CF67",
      "#FF8F40",
      "#00BFFF",
      "#AD6FF7",
      "#4CD4BD",
      "#c1c9e6",
    },
    background = "#0B0B12",
    brights = {
      "#3A3D4A",
      "#EB788B",
      "#70CF67",
      "#FF8F40",
      "#00BFFF",
      "#AD6FF7",
      "#4CD4BD",
      "#D2DBFA",
    },
    compose_cursor = "#c1c9e6",
    copy_mode_active_highlight_bg = {
      Color = "#151025",
    },
    copy_mode_active_highlight_fg = {
      Color = "#3a3d4a",
    },
    copy_mode_inactive_highlight_bg = {
      Color = "#70cf67",
    },
    copy_mode_inactive_highlight_fg = {
      Color = "#2F313D",
    },
    -- cursor_bg = "#FaB770",
    cursor_bg = "#ff8f40",
    cursor_border = "#FaB770",
    cursor_fg = "#0b0b12",
    foreground = "#C1C9E6",
    indexed = {
      [136] = "#f0b995",
    },
    quick_select_label_bg = {
      -- Color = "#2F313D",
      Color = "#ff8f40",
    },
    quick_select_label_fg = {
      Color = "#0b0b12",
    },
    quick_select_match_bg = {
      Color = "#2F313D",
    },
    quick_select_match_fg = {
      Color = "#00bfff",
    },
    scrollbar_thumb = "#312c44",
    selection_bg = "#4d4962",
    split = "#4d4962",
  }
  config.color_scheme = name
end

return M
