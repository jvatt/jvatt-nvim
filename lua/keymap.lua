-- Map space as <leader>
vim.g.mapleader = " "

-- Telescope --
local builtin = require("telescope.builtin")
-- Space + s
vim.keymap.set('n', '<leader>s', builtin.find_files, {})
-- Space + f
vim.keymap.set('n', '<leader>f', builtin.live_grep, {})
