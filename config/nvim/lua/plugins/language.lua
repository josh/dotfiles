return {
  -- nvim-treesitter
  -- https://github.com/nvim-treesitter/nvim-treesitter/wiki/Installation#lazynvim
  {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",
    opts = {
      ensure_installed = {
        "bash",
        "css",
        "gitcommit",
        "gitignore",
        "go",
        "html",
        "javascript",
        "json",
        "lua",
        "markdown",
        "python",
        "swift",
        "vim",
        "yaml",
      },
    },
  },

  -- nvim-lspconfig
  -- https://github.com/neovim/nvim-lspconfig
  {
    "neovim/nvim-lspconfig",
    lazy = true,
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      local lspconfig = require("lspconfig")

      lspconfig.lua_ls.setup({
        settings = {
          Lua = {
            diagnostics = {
              -- TODO: I think this just ignores the vim global,
              -- but how to get it correctly recognized by the LSP
              globals = { "vim" },
            },
          },
        },
      })
    end,
  },
}
