return {
  -- 1. Trouble: A nice list for all your errors/warnings
  {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {}, -- use default options
    keys = {
      {
        "<leader>xx",
        "<cmd>Trouble diagnostics toggle<cr>",
        desc = "Diagnostics (Trouble)",
      },
      {
        "<leader>xX",
        "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
        desc = "Buffer Diagnostics (Trouble)",
      },
    },
  },

  -- 2. Which-key: Helps you remember all these shortcuts
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
    end,
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
    }
  },

  -- 3. Toggleterm: A terminal inside Neovim
  {
    'akinsho/toggleterm.nvim',
    version = "*",
    config = function()
        require("toggleterm").setup({
            open_mapping = [[<c-\>]], -- Press Ctrl + \ to open terminal
            direction = 'float',
            float_opts = {
                border = 'curved',
            }
        })
    end
  }
}
