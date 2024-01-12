return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local config = require('nvim-treesitter.configs')
    config.setup({
      ensure_installed = {"vim", "vimdoc", "lua", "javascript", "typescript", "tsx", "yaml"},
      highlight = { enable = true },
      indent = { enable = true },
    })
  end
}

