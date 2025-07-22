local lspconfig = require('lspconfig')
local cmp = require('cmp')

-- Включение Pyright
lspconfig.pyright.setup({
  on_attach = function(client, bufnr)
    -- Ключевые mapping (опционально)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', {noremap = true})
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', {noremap = true})

  end,
  settings = {
    python = {
      analysis = {
        typeCheckingMode = "basic",  -- или "strict"

        autoSearchPaths = true,
        useLibraryCodeForTypes = true

      }
    }
  }
})

-- Настройка автодополнения
cmp.setup({
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ['<Up>'] = cmp.mapping.abort(),  -- просто закрывает подсказки
    ['<Down>'] = cmp.mapping.abort(),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
  }),

  sources = cmp.config.sources({
    { name = 'nvim_lsp' },  -- LSP-источник
    { name = 'buffer' },    -- Текст из буфера
    { name = 'path' },      -- Пути к файлам
  }),
  formatting = {
    format = require('lspkind').cmp_format({
      mode = 'symbol_text',
      maxwidth = 50,
    })

  }
})
