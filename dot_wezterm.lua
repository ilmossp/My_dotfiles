-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- font options
config.font = wezterm.font 'CaskaydiaCove Nerd Font'
config.font_size = 10
config.front_end = "WebGpu"
-- changing the color scheme:
config.color_scheme = 'Catppuccin Mocha'
-- tab tab bar
config.hide_tab_bar_if_only_one_tab = true
config.use_fancy_tab_bar = false
-- keybinds
config.keys = {
	{
		key = 'Enter',
		mods = 'CTRL|SHIFT',
		action = wezterm.action.SplitPane {
			direction = 'Right',
			size = { Percent = 50 },
		},
	},
	{
		key = 'Enter',
		mods = 'CTRL|ALT',
		action = wezterm.action.SplitPane {
			direction = 'Down',
			size = { Percent = 50 },
		},
	},
	{
		key = 'w',
		mods = 'CTRL',
		action = wezterm.action.CloseCurrentPane { confirm = false },
	},

}
-- window
config.window_decorations = "RESIZE"

-- debug
--config.debug_key_events = true


-- and finally, return the configuration to wezterm
return config
