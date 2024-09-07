local wezterm = require("wezterm")
local config = wezterm.config_builder()
local act = wezterm.action

config.set_environment_variables = {
	PATH = "/opt/homebrew/bin:" .. os.getenv("PATH"),
	THEME = "catppuccin_macchiato",
}

-- local appearance = require("appearance")
config.color_scheme = "Catppuccin Macchiato"

config.font = wezterm.font({ family = "MesloLGM Nerd Font Mono" })
config.font_size = 18

config.window_decorations = "RESIZE"
config.window_frame = {
	font = wezterm.font({ family = "MesloLGM Nerd Font Mono", weight = "Bold" }),
	font_size = 16,
}

config.use_fancy_tab_bar = false

config.initial_cols = 120
config.initial_rows = 40

config.keys = {
	{
		key = ",",
		mods = "CMD",
		action = act.SpawnCommandInNewTab({
			cwd = wezterm.home_dir,
			args = { "nvim", wezterm.config_file },
		}),
	},
	{
		key = "k",
		mods = "CMD",
		action = act.Multiple({
			act.ClearScrollback("ScrollbackAndViewport"),
			act.SendKey({ key = "L", mods = "CTRL" }),
		}),
	},
}

return config
