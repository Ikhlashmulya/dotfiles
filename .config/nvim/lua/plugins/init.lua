return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim", "lua", "vimdoc",
        "html", "css", "go"
    	},
    },
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "gopls", "goimports", "gofumpt", "typescript-language-server", "prisma-language-server"
      }
    }
  },
  {
    "MunifTanjim/prettier.nvim"
  },
  {
    "okuuva/auto-save.nvim",
    event = { "InsertLeave", "TextChanged" }, -- optional for lazy loading on trigger events
    opts = {
    -- your config goes here
    -- or just leave it empty :)
    },
  },
}
