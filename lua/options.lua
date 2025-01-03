require "nvchad.options"

local o = vim.o

o.cursorlineopt = "both"
o.clipboard = ""
o.relativenumber = true
o.foldmethod = "expr"
o.foldexpr = "nvim_treesitter#foldexpr()"
