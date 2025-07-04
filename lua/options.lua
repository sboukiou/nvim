vim.cmd.colorscheme 'obscure'
--[[ OPTIONS ]]

-- Theme

-- For tabs size and indeneting
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.grepprg = 'rg'

-- For setting relative line numbers 
 vim.opt.rnu = true

-- Show the current cursor line number instead of 0
vim.opt.nu = true


-- When there is a previous search pattern, highlight all its matches.
vim.opt.hlsearch = true

-- Highlight the current line
vim.opt.cursorline = true
vim.opt.laststatus = 3

-- Always let n lines before EOF , to keep the cursor on the middle 
vim.opt.scrolloff = 12

-- Set cursor shape to block (if you're a real one)
vim.opt.guicursor = "n-v-i-c:block-Cursor"

--[[ For background transparency ]]
vim.api.nvim_set_hl(0, "Normal", {bg = "none"})
vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none"})
-- In your init.lua or relevant config file
vim.cmd([[
  highlight Normal guibg=NONE ctermbg=NONE
  highlight NormalNC guibg=NONE ctermbg=NONE
  highlight NormalFloat guibg=NONE ctermbg=NONE
  highlight FloatBorder guibg=NONE ctermbg=NONE
  highlight SignColumn guibg=NONE ctermbg=NONE
  highlight EndOfBuffer guibg=NONE ctermbg=NONE
]])


--[[ Disable options in terminal mode ]]

vim.api.nvim_create_autocmd("TermOpen", {
  pattern = "*",
  callback = function()
    vim.opt_local.relativenumber = false
    vim.opt_local.number = false
  end
})
