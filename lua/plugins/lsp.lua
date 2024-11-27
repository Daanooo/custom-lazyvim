return {
  -- All lsp servers and lspconfig stuff
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        gopls = {},
        phpactor = {
          init_options = {
            ["language_server_phpstan.enabled"] = true,
          },
        },
      },
    },
  },

  -- Treesitter config
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "go",
        "php",
        "phpdoc",
      },
    },
  },

  -- Formatters
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        go = { "goimports", "gofmt" },
      },
    },
  },
}
