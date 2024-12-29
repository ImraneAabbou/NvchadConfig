require "nvchad.mappings"

return {
  {
    modes = { "n" },
    keys = ";",
    command = ":",
    opts = { desc = "CMD enter command mode" },
  },
  {
    modes = { "i" },
    keys = "jk",
    command = "<ESC>",
    opts = {},
  },
  {
    modes = { "n" },
    keys = "<leader>l",
    command = ":Noice history<cr>",
    opts = { desc = "Show history messages" },
  },
  {
    modes = { "n" },
    keys = "T",
    command = require("base46").toggle_transparency,
    opts = { desc = "Toggle Transparency" },
  },
  {
    modes = { "n" },
    keys = '<leader>"',
    command = require("functions.vim").clear_registers,
    opts = { desc = "Clear registers" },
  },
  {
    modes = { "n" },
    keys = "<leader>'",
    command = require("functions.vim").clear_marks,
    opts = { desc = "Clear marks" },
  },
}

