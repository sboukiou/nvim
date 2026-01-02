return {
	{
		'AlexvZyl/nordic.nvim',
		lazy = false,
		priority = 1000,
		config = function()
			require('nordic').load()
		end
	},
	{
		'nvim-treesitter/nvim-treesitter',
		require("lazy").setup({
			{
				"nvim-treesitter/nvim-treesitter", 
				branch = 'master',
				lazy = false,
				build = ":TSUpdate"
			}
		})

	},
}
