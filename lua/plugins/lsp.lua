return {
  -- All lsp servers and lspconfig stuff
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        gopls = {},
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
