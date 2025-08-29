-- Recognize htmlangular files
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = "*.component.html",
  command = "set filetype=htmlangular",
})
