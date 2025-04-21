return {
	{
		"williamboman/mason.nvim",
		opts = { ensure_installed = { "clangd", "lua-language-serve", "clang-format" } },
		virtual_text = true;
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
			vim.diagnostic.config({
				virtual_text = true,
				signs = true,
				update_in_insert = false,
				underline = true,
				severity_sort = false,
				float = true,
			})

		end,
	},
}
