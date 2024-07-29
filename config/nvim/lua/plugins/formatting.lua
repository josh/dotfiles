return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        json = { "prettier" },
        lua = { "stylua" },
        markdown = { "prettier" },
        python = { "ruff_format", "ruff_fix" },
        yaml = { "prettier" },
      },
    },
  },

  {
    "mfussenegger/nvim-lint",
    opts = {
      linters_by_ft = {
        bash = { "shellcheck" },
        python = { "ruff", "mypy" },
      },
    },
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "actionlint",
        "prettier",
        "ruff",
        "shellcheck",
        "shfmt",
        "stylua",
      },
    },
  },
}
