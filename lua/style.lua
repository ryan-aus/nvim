local cmd = vim.cmd
local api = vim.api

api.nvim_command('set termguicolors')
api.nvim_command('colorscheme gruvbox8')
api.nvim_command('set hidden')
-- line wrap on whitespace
api.nvim_command('set lbr')

-- keep cursor centered
vim.o.scrolloff = 999

