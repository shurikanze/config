print("keymaps.lua loaded")
local key = vim.keymap

key.set('n', '<C-t>', ':tabnew<CR>', { desc = 'new tab' })
key.set('n', '<C-w>', ':tabclose<CR>', { desc = 'close tab' })
key.set('n', '<C-l>', 'gt', { desc = 'next tab' })
key.set('n', '<C-h>', 'gT', { desc = 'previous tab' })

-- маппинги для переключения между вкладок, разделенных горизонтально
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', { noremap = true, silent = true })
