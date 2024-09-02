return {
	"christoomey/vim-tmux-navigator",
	lazy = false,
	cmd = {
		"TmuxNavigateLeft",
		"TmuxNavigateDown",
		"TmuxNavigateUp",
		"TmuxNavigateRight",
		"TmuxNavigatePrevious",
	},
	-- Rebinding LazyVim default window navigation to make it tmux aware
	-- https://github.com/LazyVim/LazyVim/blob/3dbace941ee935c89c73fd774267043d12f57fe2/lua/lazyvim/config/keymaps.lua#L13-L17
	keys = {
		{ "<C-w>h", "<Cmd>TmuxNavigateLeft<CR>", desc = "Go to Left Window" },
		{ "<C-w>j", "<Cmd>TmuxNavigateDown<CR>", desc = "Go to Lower Window" },
		{ "<C-w>k", "<Cmd>TmuxNavigateUp<CR>", desc = "Go to Upper Window" },
		{ "<C-w>l", "<Cmd>TmuxNavigateRight<CR>", desc = "Go to Right Window" },

		{ "<C-h>", "<Cmd>TmuxNavigateLeft<CR>", desc = "Go to Left Window" },
		{ "<C-j>", "<Cmd>TmuxNavigateDown<CR>", desc = "Go to Lower Window" },
		{ "<C-k>", "<Cmd>TmuxNavigateUp<CR>", desc = "Go to Upper Window" },
		{ "<C-l>", "<Cmd>TmuxNavigateRight<CR>", desc = "Go to Right Window" },
	},
}
