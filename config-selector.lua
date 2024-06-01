local wezterm = require("wezterm")
local sep = package.config:sub(1, 1)

local H = {}
local ConfigSelector = {}

ConfigSelector.new = function(opts)
  local self = setmetatable({}, { __index = ConfigSelector })
  self.title = opts.title or "Config Selector"
  self.config_items = {}
  self.active_item_name = nil

  local dir = wezterm.config_dir .. sep .. opts.subdir
  for _, path in ipairs(wezterm.read_dir(dir)) do
    self:register(H.path_to_module_name(path))
  end

  return self
end

ConfigSelector.register = function(self, module_name)
  local module = require(module_name)

  -- The return value from `init` can be one of the following:
  --
  -- 1. "item name"
  -- 2. { label = "item name" }
  -- 3. { label = "item name", value = "item value" }
  -- 4. { "item name1", "item name2", "item name3" }
  -- 5. { { label = "item name1" }, "item name2", { label = "item name3", value = "item value" }}
  local result = module.init()

  if H.is_array(result) then
    for _, item in ipairs(result) do
      item = H.normalize_item(item)
      self.config_items[item.label] = { mod = module, value = item.value }
    end
  else
    result = H.normalize_item(result)
    self.config_items[result.label] = { mod = module, value = result.value }
  end
end

ConfigSelector.active_item = function(self)
  return self.active_item_name
end

ConfigSelector.select = function(self, config, item_name)
  local opts = self.config_items[item_name]
  if opts then
    opts.mod.activate(config, item_name, opts.value)
    self.active_item_name = item_name
  else
    error(string.format("'%s' not defined for %s", item_name, self.title))
  end
end

ConfigSelector.selector_action = function(self)
  return wezterm.action_callback(function(window, pane)
    window:perform_action(
      wezterm.action.InputSelector({
        action = wezterm.action_callback(function(win, _, _, label)
          if not label then
            return -- user cancelled
          end
          local overrides = win:get_config_overrides() or {}
          self:select(overrides, label)
          win:set_config_overrides(overrides)
        end),
        title = self.title,
        choices = H.items_to_choices(self.config_items),
        fuzzy = true,
      }),
      pane
    )
  end)
end

H.path_to_module_name = function(path)
  path = string.sub(path, #wezterm.config_dir + 2)
  path = string.gsub(path, ".lua$", "")
  path = string.gsub(path, sep, ".")
  return path
end

H.items_to_choices = function(items)
  local choices = {}
  for item_name, _ in pairs(items) do
    table.insert(choices, { label = item_name })
  end
  table.sort(choices, function(a, b)
    return a.label < b.label
  end)
  return choices
end

H.is_array = function(item)
  return type(item) == "table" and item[1] ~= nil
end

H.normalize_item = function(item)
  return type(item) == "table" and item or { label = item }
end

return ConfigSelector
