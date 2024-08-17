local wezterm = require("wezterm")
local config = wezterm.config_builder()
local act = wezterm.action

config.set_environment_variables = {
	PATH = "/opt/homebrew/bin:" .. os.getenv("PATH"),
	THEME = "tokyonight_moon",
}

-- local appearance = require("appearance")
config.color_scheme = "Tokyo Night Moon"

config.font = wezterm.font({ family = "Berkeley Mono" })
config.font_size = 16

config.window_decorations = "RESIZE"
config.window_frame = {
	font = wezterm.font({ family = "Berkeley Mono", weight = "Bold" }),
	font_size = 16,
}

config.use_fancy_tab_bar = false

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
