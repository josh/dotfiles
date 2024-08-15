local wezterm = require("wezterm")
local config = wezterm.config_builder()

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

config.keys = {
	{
		key = ",",
		mods = "SUPER",
		action = wezterm.action.SpawnCommandInNewTab({
			cwd = wezterm.home_dir,
			args = { "nvim", wezterm.config_file },
		}),
	},
}

return config
