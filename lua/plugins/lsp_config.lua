return {
	{
		"williamboman/mason.nvim",
		opts = { ensure_installed = { "clangd", "lua-language-serve", "clang-format" } },
		config = function()
			require("mason").setup()
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			-- local.
			lspconfig.lua_ls.setup({})
			lspconfig.clangd.setup({})

		end,
	},
}
