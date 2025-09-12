require "nvchad.options"

local o = vim.o

o.cursorlineopt = "both"
o.clipboard = ""
o.relativenumber = true
o.foldmethod = "expr"
o.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.shell = "fish"

-- auto set filetype to htmlangular files
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = "*.component.html",
  command = "set filetype=htmlangular",
})
