return {
  -- conform.nvim
  -- https://github.com/stevearc/conform.nvim#installation
  -- https://github.com/stevearc/conform.nvim/blob/master/doc/recipes.md#lazy-loading-with-lazynvim
  {
    "stevearc/conform.nvim",
    lazy = true,
    event = { "BufWritePre" },
    cmd = { "ConformInfo" },
    opts = {
      formatters_by_ft = {
        json = { "prettier" },
        lua = { "stylua" },
        markdown = { "prettier" },
        python = { "ruff_format", "ruff_fix" },
        yaml = { "prettier" },
      },
      format_on_save = {
        timeout_ms = 500,
      },
    },
  },
}
