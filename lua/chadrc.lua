-- This file  needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.ui = {
  theme = "mito-laser",
  statusline = {
    theme = "default",
    separator_style = "arrow",
  },
}

M.base46 = {
  transparency = true,
  theme = "onedark"
}

M.term = {
  sizes = { sp = 1, vsp = 1 },
  float = {
    width = 1,
    height = 1,
    border = "",
  },
}

return M
