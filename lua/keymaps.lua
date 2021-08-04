local map = vim.api.nvim_set_keymap

-- leader
map('n', '<space>', '', {})
vim.g.mapleader = ' '

-- remap escape
map('i', 'jh', '<esc>', {})

-- buffer nav
map('n', 'L', ':bnext<CR>', {})
map('n', 'H', ':bprev<CR>', {})

-- file nav
map('n', '<C-n>', ':NvimTreeToggle<CR>', {})

-- window nav
map('n', '<C-h>', '<C-w>h', {noremap = true})
map('n', '<C-j>', '<C-w>j', {noremap = true})
map('n', '<C-k>', '<C-w>k', {noremap = true})
map('n', '<C-l>', '<C-w>l', {noremap = true})

-- fzf
-- search for file in cwd
map('n', '<leader>sf', ':Files<CR>', {})
-- search for file in home directory
map('n', '<leader>saf', ':Files ~<CR>', {})
-- search for line in all buffers
map('n', '<leader>sbl', ':Lines<CR>', {})
-- search for line in all files
map('n', '<leader>sl', ':Rg<CR>', {})
-- search for buffer by file name
map('n', '<leader>sb', ':Buffers<CR>', {})
-- search for tag by name
map('n', '<leader>st', ':Tags<CR>', {})

-- code-nav
map('n', '<leader>gd', '<cmd>lua vim.lsp.buf.definition()<CR>', {})
map('n', '<leader>gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', {})
map('n', '<leader>gr', '<cmd>lua vim.lsp.buf.references()<CR>', {})
map('n', '<leader>gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', {})
map('n', '<C-K>', '<cmd>lua vim.lsp.buf.hover()<CR>', {})
--map('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', {})
map('n', '<C-q>', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', {noremap = true})
map('n', '<C-w>', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', {noremap = true})

-- snippets
vim.g.UltiSnipsExpandTrigger="<tab>"
vim.g.UltiSnipsJumpForwardTrigger="<c-b>"
vim.g.UltiSnipsJumpBackwardTrigger="<c-z>"
