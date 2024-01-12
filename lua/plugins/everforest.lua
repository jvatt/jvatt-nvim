return {
  "neanias/everforest-nvim",
  version = false,
  lazy = false,
  priority = 1000, -- make sure to load this before all the other start plugins
  config = function()
    require("everforest").setup({
      termguicolors = true,
      background = "hard",
    })
    vim.cmd('colorscheme everforest')
    -- For better performance
    vim.cmd('let g:everforest_better_performance = 1')
  end,
}

