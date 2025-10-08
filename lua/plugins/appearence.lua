return {
	{
		"tiagovla/tokyodark.nvim",
		opts = {
			-- custom options here
		},
		config = function(_, opts)
			require("tokyodark").setup(opts) -- calling setup is optional
			vim.cmd [[colorscheme tokyodark]]
		end,
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
