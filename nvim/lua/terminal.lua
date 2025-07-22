vim.api.nvim_create_autocmd("FileType", {
  pattern = "python",
  callback = function()
    vim.api.nvim_set_keymap('n', '<F5>', ':w<CR>:split<CR>:terminal python %<CR>', { noremap = true })
  end
})
