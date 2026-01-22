return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
    -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
  },
  config = function()
    require("neo-tree").setup({
      -- Disable mouse
      window = {
        mappings = {
          ["<LeftMouse>"] = "noop",
          ["<2-LeftMouse>"] = "noop", -- Disables double-click to open
        },
      },
      -- Show relative line numbers
      event_handlers = {
        {
          event = "neo_tree_buffer_enter",
          handler = function()
            vim.cmd([[
          setlocal relativenumber
        ]])
          end,
        },
      },

      auto_expand_width = true,
      filesystem = {
        filtered_items = {
          visible = true,
          hide_dotfiles = false,
          hide_gitignored = true,
        },
      },
    })
  end,
}
