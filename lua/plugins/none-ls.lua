return {
	"nvimtools/none-ls.nvim",
	dependencies = {
		"nvimtools/none-ls-extras.nvim",
	},
	config = function()
		local null_ls = require("null-ls")
		local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
		null_ls.setup({
			sources = {
				require("none-ls.diagnostics.eslint_d"),
				require("none-ls.code_actions.eslint_d"),
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.prettier,
				null_ls.builtins.diagnostics.codespell.with({
					filetypes = {
						"javascript",
						"javascriptreact",
						"typescript",
						"typescriptreact",
						"graphql",
					},
				}),
			},
			on_attach = function(client, bufnr)
				if client.name == "null-ls" and client.supports_method("textDocument/formatting") then
					vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
					vim.api.nvim_create_autocmd("BufWritePre", {
						group = augroup,
						buffer = bufnr,
						callback = function()
							vim.lsp.buf.format({
								bufnr = bufnr,
								filter = function(_client)
									return _client.name ~= "tsserver"
								end,
							})
						end,
					})
				end
			end,
		})
	end,
}
