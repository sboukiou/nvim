vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")
vim.keymap.set('n', '<Tab>', ':bnext<CR>')
vim.keymap.set("t", "<C-w>w", "<cmd><C-w>w<CR>")

vim.cmd("tnoremap <C-w> <C-\\><C-N><C-w>")
vim.cmd("tnoremap <A-j> <C-\\><C-N><C-w>j")
vim.cmd("tnoremap <C-k> <C-\\><C-N><C-w>k")
vim.cmd("tnoremap <A-l> <C-\\><C-N><C-w>l")


-- Telescope mappings
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<space>ff',builtin.find_files)
vim.keymap.set('n', '<space>fg',builtin.live_grep)
vim.keymap.set('n', '<space>th',builtin.colorscheme)

-- Neotree
vim.keymap.set('n', '<space>gb', ':Neotree toggle position=current<CR>')


-- Lsp mappings
vim.keymap.set('n', '<space>df', vim.lsp.buf.definition, {})
vim.keymap.set('n', '<space>dc', vim.lsp.buf.declaration, {})
vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, {})

-- ft header
vim.keymap.set('n', '<F1>', ':Stdheader<CR>')
