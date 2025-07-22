-- Загружаем плагины
require("options") -- Основные настройки vim
require("colorscheme") -- Добавление цветовых схем
require("keymaps") -- mapping keytab
require('plugins')
require('terminal')

-- Загружаем lualine
require('lualine').setup()  -- или require('config.lualine') если используешь отдельный файл

-- download treesitter
require('config.treesitter')

--python
require('config.lsp_python')
require('config.python')
