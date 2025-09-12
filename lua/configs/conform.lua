local front_end_fmt = "prettierd"

local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    php = { "pretty-php" },
    blade = { "blade-formatter" },
    sql = { "sqlfmt" },
    htmlangular = { front_end_fmt },
    html = { front_end_fmt },
    css = { front_end_fmt },
    javascript = { front_end_fmt },
    typescript = { front_end_fmt },
    typescriptreact = { front_end_fmt },
    json = { front_end_fmt },
    yaml = { front_end_fmt },
    markdown = { front_end_fmt },
    scss = { front_end_fmt },
    less = { front_end_fmt },
    vue = { front_end_fmt },
    svelte = { front_end_fmt },
    python = { "black" }
  }, -- format_on_save = {
  --   -- These options will be passed to conform.format()
  --   timeout_ms = 500,
  --   lsp_fallback = true,
  -- },
}

require("conform").setup(options)
