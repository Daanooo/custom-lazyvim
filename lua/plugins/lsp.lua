return {
  -- All lsp servers and lspconfig stuff
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        gopls = {},

        phpactor = {
          init_options = {
            ["indexer.include_patterns"] = { "app/", "vendor/" },
          },
          root_dir = function(fname)
            return require("lspconfig.util").root_pattern("composer.json", ".git")(fname) or vim.loop.os_homedir()
          end,
        },

        lua_ls = {},
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
        "lua",
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
