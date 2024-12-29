require("nvchad.configs.lspconfig").defaults()
local nvlsp = require "nvchad.configs.lspconfig"
local on_attach = nvlsp.on_attach
local on_init = nvlsp.on_init
local capabilities = nvlsp.capabilities
local lspconfig = require "lspconfig"

local servers = {
  -- stimulus_ls = {},
  html = {},
  cssls = {},
  ts_ls = {},
  clangd = {},
  -- emmet_language_server = {},
  emmet_ls = {
    filetypes = {
      "css",
      "eruby",
      "html",
      "php",
      "javascript",
      "javascriptreact",
      "less",
      "sass",
      "scss",
      "pug",
      "typescriptreact",
      "blade",
    },
  },
  pyright = {},
  tailwindcss = {},
  intelephense = {},
  phpactor = {},
  css_variables = {},
  cssmodules_ls = {},
  jsonls = {},
  sqlls = {},
  prismals = {},
}

for serverName, serverConfig in pairs(servers) do
  lspconfig[serverName].setup(vim.tbl_extend("force", {
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
  }, serverConfig))
end
