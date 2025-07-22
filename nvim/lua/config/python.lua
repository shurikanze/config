-- Автоматическое форматирование при сохранении
vim.api.nvim_create_autocmd('BufWritePre', {
  pattern = '*.py',

  callback = function()
    vim.lsp.buf.format({ async = false })
  end
})

-- Подсветка синтаксиса (через Treesitter)
if not pcall(require, 'nvim-treesitter') then

  vim.cmd [[packadd nvim-treesitter]]

  require('nvim-treesitter.configs').setup({
    highlight = { enable = true },
    indent = { enable = true },
  })
end
