local M = {}
local name = "MiniHues Purple"

M.init = function()
  return name
end

M.activate = function(config)
  config.color_schemes = config.color_schemes or {}
  config.color_schemes[name] = {
    ansi = { "#312c44", "#f5b1bb", "#a6d5a7", "#d2c88b", "#93cff3", "#e2b5e3", "#87d8d2", "#81888b" },
    background = "#151025",
    brights = { "#4d4962", "#f5b1bb", "#a6d5a7", "#d2c88b", "#93cff3", "#e2b5e3", "#87d8d2", "#a0a8ab" },
    compose_cursor = "#f0b995",
    copy_mode_active_highlight_bg = {
      Color = "#151025",
    },
    copy_mode_active_highlight_fg = {
      Color = "#a0a8ab",
    },
    copy_mode_inactive_highlight_bg = {
      Color = "#a6d5a7",
    },
    copy_mode_inactive_highlight_fg = {
      Color = "#151025",
    },
    cursor_bg = "#93cff3",
    cursor_border = "#93cff3",
    cursor_fg = "#003249",
    foreground = "#c0c8cb",
    indexed = {
      [136] = "#f0b995",
    },
    quick_select_label_bg = {
      Color = "#f0b995",
    },
    quick_select_label_fg = {
      Color = "#151025",
    },
    quick_select_match_bg = {
      Color = "#312c44",
    },
    quick_select_match_fg = {
      Color = "#93cff3",
    },
    scrollbar_thumb = "#312c44",
    selection_bg = "#4d4962",
    split = "#4d4962",
  }
  config.color_scheme = name
end

return M
