return {
  clear_registers = function()
    for reg = 0, 9 do
      vim.fn.setreg(tostring(reg), "")
    end

    for reg = string.byte "a", string.byte "z" do
      vim.fn.setreg(string.char(reg), "")
    end

    local special_registers = { '"', "*", "+", "-", "/" }
    for _, reg in ipairs(special_registers) do
      vim.fn.setreg(reg, "")
    end
  end,

  clear_marks = function()
    vim.fn.execute "delm! | delm A-Z0-9"
  end,
}
