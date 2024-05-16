-- stylua: ignore start
local wezterm  = require("wezterm")
local selector = require("config-selector")
local act      = wezterm.action
local config   = wezterm.config_builder()

-- My dynamic configuration selectors
local fonts    = selector.new({ title = "Font Selector",          subdir = "fonts" })
local inactive = selector.new({ title = "Inactive Pane Selector", subdir = "inactivepanes" })
local leading  = selector.new({ title = "Font Leading Selector",  subdir = "leadings" })
local schemes  = selector.new({ title = "Color Scheme Selector",  subdir = "colorschemes" })
local sizes    = selector.new({ title = "Font Size Selector",     subdir = "sizes" })
-- stylua: ignore end

fonts:select(config, "Berkeley Mono")
schemes:select(config, "MiniHues Slate")

-- Customize the tab title to show zoom icon when zoomed
wezterm.on("format-tab-title", function(tab)
  local icon = ""
  local attrs = {
    { Background = { Color = "#333333" } },
  }
  if tab.active_pane.is_zoomed then
    icon = "🔎 "
    table.insert(attrs, { Foreground = { Color = "Orange" } })
  end
  table.insert(attrs, {
    Text = tab.tab_index + 1 .. ": " .. icon .. tab.active_pane.title,
  })
  return attrs
end)

-- Configuration
config.front_end = "WebGpu"
config.force_reverse_video_cursor = true

config.use_resize_increments = false
config.adjust_window_size_when_changing_font_size = false

config.window_decorations = "INTEGRATED_BUTTONS|RESIZE"
config.window_frame = { font_size = 14 }
config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0,
}

config.mouse_bindings = {
  {
    event = { Down = { streak = 3, button = "Left" } },
    action = wezterm.action.SelectTextAtMouseCursor("SemanticZone"),
    mods = "NONE",
  },
}

config.leader = { key = "o", mods = "SUPER", timeout_milliseconds = 1000 }

-- stylua: ignore
config.keys = {
  { key = "Return", mods = "ALT",    action = wezterm.action.DisableDefaultAssignment },
  { key = "[",      mods = "SUPER",  action = act.ActivatePaneDirection("Prev") },
  { key = "\\",     mods = "SUPER",  action = act.SplitVertical({ domain = "CurrentPaneDomain" }) },
  { key = "]",      mods = "SUPER",  action = act.ActivatePaneDirection("Next") },
  { key = "c",      mods = "LEADER", action = schemes:selector_action() },
  { key = "f",      mods = "LEADER", action = fonts:selector_action() },
  { key = "i",      mods = "LEADER", action = inactive:selector_action() },
  { key = "l",      mods = "LEADER", action = leading:selector_action() },
  { key = "l",      mods = "SUPER",  action = act.RotatePanes("Clockwise") },
  { key = "p",      mods = "LEADER", action = act.PaneSelect },
  { key = "p",      mods = "SUPER",  action = act.PaneSelect },
  { key = "r",      mods = "LEADER", action = act.ActivateKeyTable({ name = "resize_pane", one_shot = false }) },
  { key = "s",      mods = "LEADER", action = sizes:selector_action() },
  { key = "s",      mods = "SUPER",  action = act.PaneSelect({ mode = "SwapWithActive" }) },
  { key = "x",      mods = "LEADER", action = act.PaneSelect({ mode = "SwapWithActive" }) },
  { key = "z",      mods = "SUPER",  action = act.TogglePaneZoomState },
  { key = "|",      mods = "SUPER",  action = act.SplitHorizontal({ domain = "CurrentPaneDomain" }) },
}

config.key_tables = {
  resize_pane = {
    { key = "Escape", action = "PopKeyTable" },
    { key = "h", action = act.AdjustPaneSize({ "Left", 1 }) },
    { key = "j", action = act.AdjustPaneSize({ "Down", 1 }) },
    { key = "k", action = act.AdjustPaneSize({ "Up", 1 }) },
    { key = "l", action = act.AdjustPaneSize({ "Right", 1 }) },
  },
}

return config
