vim.keymap.set('n', '<space>gb', ':Ex<CR>')

local fzf = require('fzf-lua')
vim.keymap.set('n', '<space>ff', fzf.files)
vim.keymap.set('n', '<space>qf', fzf.quickfix)
vim.keymap.set('n', '<space>fg', fzf.live_grep)
