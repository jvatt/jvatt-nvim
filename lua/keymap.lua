-- Telescope -------
local builtin = require("telescope.builtin")
-- Space + s
vim.keymap.set("n", "<leader>s", builtin.find_files, {})
-- Space + f
vim.keymap.set("n", "<leader>f", builtin.live_grep, {})

-- Neotree ---------
-- Space + e
vim.keymap.set("n", "<leader>e", ":Neotree filesystem reveal left<CR>")

-- LSP -------------
-- Shift + k
vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
-- gd
vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
-- Space + ca
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
-- gf
vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})

-- Gitsigns --------
-- Space + gp
vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", {})
vim.keymap.set("n", "<leader>gt", ":Gitsigns toggle_current_line_blame<CR>", {})

-- Refactoring -----
-- prompt for a refactor to apply when the remap is triggered
vim.keymap.set({ "n", "x" }, "<leader>rr", function()
	require("refactoring").select_refactor()
end)

-- VIM -------------
-- Space + y
vim.keymap.set("v", "<leader>y", '"+y', {})
-- Space + w
vim.keymap.set("n", "<leader>w", "<ESC>:w<CR>")
