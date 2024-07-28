return {
  -- bufferline.nvim
  -- https://github.com/akinsho/bufferline.nvim#installation
  {
    "akinsho/bufferline.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    lazy = false,
    opts = {},
  },

  -- lualine.nvim
  -- https://github.com/nvim-lualine/lualine.nvim#lazynvim
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    lazy = false,
    opts = {},
    init = function()
      -- Hide command-line area while not using
      vim.opt.cmdheight = 0
    end,
  },

  -- neo-tree.nvim
  -- https://github.com/nvim-neo-tree/neo-tree.nvim#minimal-quickstart
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    lazy = false,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
    keys = {
      { "<leader>t", "<cmd>Neotree toggle<cr>", desc = "Toggle NeoTree" },
    },
    opts = {
      close_if_last_window = true,
      open_on_setup = true,
      filesystem = {
        follow_current_file = {
          enabled = true,
        },
      },
    },
  },

  -- telescope.nvim
  -- https://github.com/nvim-telescope/telescope.nvim#installation
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    lazy = true,
    dependencies = { "nvim-lua/plenary.nvim" },
    keys = {
      { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
      { "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Live Grep" },
      { "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Buffers" },
      { "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Help Tags" },
    },
    opts = {},
  },

  -- which-key.nvim
  -- https://github.com/folke/which-key.nvim#lazynvim
  {
    "folke/which-key.nvim",
    lazy = true,
    event = "VeryLazy",
    dependencies = {
      "echasnovski/mini.icons",
      "nvim-tree/nvim-web-devicons",
    },
    opts = {
      preset = "modern",
    },
  },
}
