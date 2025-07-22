local set = vim.opt
local cmd = vim.cmd
local api = vim.api

set.termguicolors = true --включить цвета 24bit
cmd'colorscheme gruvbox' --включение цветовой схемы
--cmd'colorscheme OceanicNext' --включение цветовой схемы
--cmd'colorscheme atom' --включение цветовой схемы


-- включеение прозразного окна
api.nvim_set_hl(0, "Normal", { bg = "none" })
api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
                                                  

