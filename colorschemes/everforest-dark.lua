local M = {}
local name = "Everforest Dark"

M.init = function()
  return name
end

M.activate = function(config)
  config.color_schemes = config.color_schemes or {}
  config.color_schemes[name] = {
    ansi = {
      "#374145",
      "#E67E80",
      "#A7C080",
      "#DBBC7F",
      "#7FBBB3",
      "#D699B6",
      "#83C092",
      "#D3C6AA",
    },
    background = "#272E33",
    brights = {
      "#414b50",
      "#E67E80",
      "#A7C080",
      "#DBBC7F",
      "#7FBBB3",
      "#D699B6",
      "#83C092",
      "#9da9a0",
    },
    compose_cursor = "#E69875",
    copy_mode_active_highlight_bg = {
      Color = "#374145",
    },
    copy_mode_active_highlight_fg = {
      Color = "#9da9a0",
    },
    copy_mode_inactive_highlight_bg = {
      Color = "#a6d5a7",
    },
    copy_mode_inactive_highlight_fg = {
      Color = "#151025",
    },
    cursor_bg = "#D3C6AA",
    cursor_border = "#D3C6AA",
    cursor_fg = "#272E33",
    foreground = "#D3C6AA",
    indexed = {
      [136] = "#e69875",
    },
    quick_select_label_bg = {
      Color = "#2e383c",
    },
    quick_select_label_fg = {
      Color = "#e69875",
    },
    quick_select_match_bg = {
      Color = "#2e383c",
    },
    quick_select_match_fg = {
      Color = "#9da9a0",
    },
    scrollbar_thumb = "#312c44",
    selection_bg = "#4c3743",
    split = "#374145",
  }
  config.color_scheme = name
end

return M
