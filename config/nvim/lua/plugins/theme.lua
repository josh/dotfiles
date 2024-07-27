return {
	-- tokyonight.nvim
	-- https://github.com/folke/tokyonight.nvim?tab=readme-ov-file#-installation
	{
		"folke/tokyonight.nvim",
		priority = 1000,
		lazy = not vim.g.neovide,
		config = function()
			if vim.g.neovide then
				vim.g.neovide_theme = "dark"
				vim.cmd([[colorscheme tokyonight]])
			end
		end,
	},

	-- Catppuccin
	-- https://github.com/catppuccin/nvim#installation
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		lazy = true,
	},
}
