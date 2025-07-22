local map = vim.api.nvim_set_keymap
local set = vim.opt 
--local cmd = vim.cmd

set.swapfile = false
set.encoding = "utf-8"
set.scrolloff = 7

-- Типа 'Нажимает' на ESC при быстром нажатии jj, чтобы не тянутся
map ('i', 'jj', '<Esc>', {noremap = true})


-- включение нумерации строк
set.relativenumber = true
set.number = true

set.hls = false -- отключение подсветки при поиске
set.cursorline = true -- подсветка строки с курсором

-- tabs & indentation
set.tabstop = 4 -- 4 spaces for tabs (prettier default)
set.softtabstop = 4
set.shiftwidth = 4 -- 4 spaces for indent width
set.expandtab = true -- expand tab to spaces
set.autoindent = true -- copy indent from current line when starting new one

-- line wrapping
set.wrap = true -- disable line wrapping
set.linebreak = true

-- search settings
set.ignorecase = true -- ignore case when searching
set.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive


