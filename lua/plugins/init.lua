return {
  {
    "kristijanhusak/vim-dadbod-ui",
    dependencies = {
      { "tpope/vim-dadbod", lazy = true },
      { "kristijanhusak/vim-dadbod-completion", ft = { "sql", "mysql", "plsql" }, lazy = true },
    },
    cmd = {
      "DBUI",
      "DBUIToggle",
      "DBUIAddConnection",
      "DBUIFindBuffer",
    },
  },
  {
    "prisma/vim-prisma",
    ft = "prisma",
  },
  {
    "jwalton512/vim-blade",
    ft = "blade",
  },
  {
    "barrett-ruth/live-server.nvim",
    event = "VeryLazy",

    opts = {
      args = { "--browser=firefox" },
      build = "npm install -g live-server",
      cmd = { "LiveServerStart", "LiveServerStop" },
      config = true,
    },
  },
  {
    "folke/noice.nvim",
    config = require "configs.noice",
    event = "VeryLazy",
    cmdline = {
      view = "cmdline_popup",
    },

    dependencies = {
      "MunifTanjim/nui.nvim",
    },
  },
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = require "configs.conform",
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },

  {
    "williamboman/mason.nvim",
    PATH = "prepend",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "typescript-language-server",
        "html-lsp",
        "css-lsp",
        "css-variables-language-server",
        "emmet-language-server",
        "json-lsp",
        "pyright",
        "sqlls",
        "sql-formatter",
        "tailwindcss-language-server",
        "pretty-php",
        "stylua",
      },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "regex",
        "bash",
        "markdown",
        "markdown_inline",
      },
    },
  },
}
