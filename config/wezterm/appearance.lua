local wezterm = require("wezterm")
local module = {}

-- Returns a bool based on whether the host operating system's
-- appearance is light or dark.
function module.is_dark()
	if wezterm.gui then
		return wezterm.gui.get_appearance():find("Dark")
	end
	return true
end

return module
