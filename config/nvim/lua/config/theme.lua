-- Detects colorscheme based on $THEME envvar

local mapping = {
  [""] = "default",
  ["catppuccin_frappe"] = "catppuccin-frappe",
  ["catppuccin_latte"] = "catppuccin-latte",
  ["catppuccin_macchiato"] = "catppuccin-macchiato",
  ["catppuccin_mocha"] = "catppuccin-mocha",
  ["catppuccino"] = "catppuccin-mocha",
  ["rosepine"] = "rose-pine-main",
  ["rosepine_dawn"] = "rose-pine-dawn",
  ["rosepine_moon"] = "rose-pine-moon",
  ["tokyonight"] = "tokyonight-moon",
  ["tokyonight_day"] = "tokyonight-day",
  ["tokyonight_moon"] = "tokyonight-moon",
  ["tokyonight_night"] = "tokyonight-night",
  ["tokyonight_storm"] = "tokyonight-storm",
}

return mapping[vim.env["THEME"]] or "default"
