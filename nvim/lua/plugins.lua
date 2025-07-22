vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim' --packer управляет сам собой
  use 'nvim-treesitter/nvim-treesitter' -- Подсветка синтаксиса
  --плагины для статусбара
  use 'nvim-lualine/lualine.nvim' --основной плагин
  use 'nvim-tree/nvim-web-devicons'  -- для иконок
  --/
  
  --lsp_python
  -- LSP-клиент
  use 'neovim/nvim-lspconfig'

  -- Автодополнение
  use 'hrsh7th/nvim-cmp'

  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'

  -- Иконки для автодополнения
  use 'onsails/lspkind.nvim'

  -- Дополнительно (опционально)
  use 'L3MON4D3/LuaSnip'      -- Сниппеты
  use 'rafamadriz/friendly-snippets'
  --/
end)
