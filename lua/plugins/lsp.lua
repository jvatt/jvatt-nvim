return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"ts_ls",
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			vim.lsp.enable("lua_ls")
			vim.lsp.config("lua_ls", {
				settings = {
					Lua = {
						diagnostics = {
							-- Get rid of 'undefined global vim' warning
							globals = { "vim" },
						},
					},
				},
				capabilities = capabilities,
			})
			vim.lsp.enable("ts_ls")
			vim.lsp.config("ts_ls", {
				capabilities = capabilities,
			})
			vim.lsp.enable("graphql")
			vim.lsp.config("graphql", {
				capabilities = capabilities,
			})
			vim.lsp.enable("basedpyright")
			vim.lsp.config("basedpyright", {
				capabilities = capabilities,
			})
		end,
	},
}
