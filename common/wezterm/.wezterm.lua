local wezterm = require("wezterm")
local config = wezterm.config_builder()
-- local mux = wezterm.mux

-- wezterm.on("gui-startup", function()
-- 	local tab, pane, window = mux.spawn_window({})
-- 	window:gui_window():maximize()
-- end)

config.color_scheme = "rose-pine"

config.initial_cols = 80
config.initial_rows = 24

config.tab_bar_at_bottom = true
config.use_fancy_tab_bar = false
config.show_new_tab_button_in_tab_bar = false
-- config.window_background_opacity = 0.65

config.font_size = 16
config.font = wezterm.font("FiraCode Nerd Font")

config.default_prog = { "C:\\Program Files\\PowerShell\\7\\pwsh.exe", "-NoLogo" }
-- config.default_prog = { "C:\\WINDOWS\\System32\\WindowsPowerShell\\v1.0\\powershell.exe", "-NoLogo" }
config.default_cwd = "C:\\Users\\dceli\\dev"

-- config.window_decorations = "NONE"

config.colors = {
	tab_bar = {
		background = "#191724",

		active_tab = {
			bg_color = "#232136",
			fg_color = "#c4a7e7",
			intensity = "Bold",
		},

		inactive_tab = {
			bg_color = "#191724",
			fg_color = "#907aa9",
		},

		new_tab = {
			bg_color = "#232136",
			fg_color = "#c4a7e7",
		},

		new_tab_hover = {
			bg_color = "#232136",
			fg_color = "#c4a7e7",
			italic = false,
		},
	},
}

config.keys = {
	{
		key = "t",
		mods = "ALT",
		action = wezterm.action.SpawnTab("CurrentPaneDomain"),
	},
	{
		key = "w",
		mods = "ALT",
		action = wezterm.action.CloseCurrentPane({ confirm = false }),
	},
	{
		key = "d",
		mods = "SHIFT|ALT",
		action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	},
	{
		key = "a",
		mods = "SHIFT|ALT",
		action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
	},
	{
		key = "h",
		mods = "SHIFT|ALT",
		action = wezterm.action.ActivatePaneDirection("Left"),
	},
	{
		key = "l",
		mods = "SHIFT|ALT",
		action = wezterm.action.ActivatePaneDirection("Right"),
	},
	{
		key = "k",
		mods = "SHIFT|ALT",
		action = wezterm.action.ActivatePaneDirection("Up"),
	},
	{
		key = "j",
		mods = "SHIFT|ALT",
		action = wezterm.action.ActivatePaneDirection("Down"),
	},
}

return config
