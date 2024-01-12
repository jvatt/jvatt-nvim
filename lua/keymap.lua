-- Telescope --
local builtin = require("telescope.builtin")
-- Space + s
vim.keymap.set('n', '<leader>s', builtin.find_files, {})
-- Space + f
vim.keymap.set('n', '<leader>f', builtin.live_grep, {})
-- Space + e
vim.keymap.set('n','<leader>e', ':Neotree filesystem reveal left<CR>')
-- Shift + k
vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
-- gd
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
