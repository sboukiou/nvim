return {
	{
		'numToStr/Comment.nvim',
		config = function()
			require('Comment').setup({
				toggler = {
					line = 'gcc',
					block = 'gcc',
				},
				opleader = {
					line = 'gc',
					block = 'gc',
				},
			})
		end,
	},
}
