local config = require("nvim-treesitter.configs")
config.setup({
  ensure_installed = {"lua", "javascript", "typescript", "tsx", "yaml"},
  highlight = { enable = true },
  indent = { enable = true },
})