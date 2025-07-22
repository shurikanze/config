-- ~/.config/nvim/lua/utils.lua
local M = {}

function M.run_python()
  local filename = vim.fn.expand("%")
  if string.sub(filename, -3) == ".py" then
    vim.cmd("w")
    vim.cmd("split")

    vim.cmd("terminal python " .. vim.fn.shellescape(filename))

  else
    print("⚠️ Это не Python-файл! (.py expected)")
  end
end

return M
