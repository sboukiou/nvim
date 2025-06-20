return {
	{
		'numToStr/Comment.nvim',
		config = function()
			require('Comment').setup({
				toggler = {
					---Line-comment toggle keymap
					line = 'gcc',
					---Block-comment toggle keymap
					block = 'gcc',
				},
			})
		end,
	},
}
