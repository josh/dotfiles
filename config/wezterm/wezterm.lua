local wezterm = require("wezterm")
local act = wezterm.action
local mux = wezterm.mux

local config = wezterm.config_builder()

config.set_environment_variables = {
	PATH = "/opt/homebrew/bin:" .. os.getenv("PATH"),
	THEME = "catppuccin_macchiato",
}

-- local theme = wezterm.gui.get_appearance():find("Dark") and "Catppuccin Macchiato" or "Catppuccin Latte"
local theme = "Catppuccin Macchiato"

config.color_scheme = theme
config.font = wezterm.font({ family = "JetBrains Mono", weight = "Regular" })
config.font_size = 16

config.tab_bar_at_bottom = true

-- TODO: Add to josh/homebrew-tap
local tabline = wezterm.plugin.require("https://github.com/michaelbrusegard/tabline.wez")
tabline.setup({
	options = {
		theme = theme,
	},
	sections = {
		tabline_y = { "datetime" },
	},
})
tabline.apply_to_config(config)

config.initial_cols = 120
config.initial_rows = 35
local initial_width = 2300
local initial_height = 1568

config.window_padding = {
	left = 10,
	right = 10,
	top = 10,
	bottom = 10,
}

wezterm.on("gui-startup", function(cmd)
	local screen = wezterm.gui.screens().active
	local x = (screen.width - initial_width) * 0.5
	local y = (screen.height - initial_height) * 0.5

	local tab, pane, window = mux.spawn_window(cmd or {
		position = { x = x, y = y },
	})

	local dimensions = window:gui_window():get_dimensions()
	if dimensions.pixel_height ~= initial_height then
		wezterm.log_warn("Initial height mismatch: " .. dimensions.pixel_height)
	end
	if dimensions.pixel_width ~= initial_width then
		wezterm.log_warn("Initial width mismatch: " .. dimensions.pixel_width)
	end

	x = (screen.width - dimensions.pixel_width) * 0.5
	y = (screen.height - dimensions.pixel_height) * 0.5
	window:gui_window():set_position(x, y)
end)

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
