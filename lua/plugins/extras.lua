return {
  -- 1. Gitsigns: Show git diff in the gutter
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup()
    end,
  },

  -- 2. Comment.nvim: Easy commenting with 'gcc'
  {
    "numToStr/Comment.nvim",
    config = function()
      require("Comment").setup()
    end,
  },

  -- 3. Indent-blankline: Visual indentation guides
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    config = function()
      require("ibl").setup({
        indent = {
          char = "╎", -- A more subtle, dashed line
        },
        scope = {
          enabled = true,
          show_start = false,
          show_end = false,
        },
      })
    end,
  },

  -- 4. Surround: Add/change/delete surroundings (quotes, brackets)
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup({})
    end
  },

  -- 5. Fugitive: Git commands from Neovim command line
  {
    "tpope/vim-fugitive",
  },

  -- 6. Conform: Auto-formatting
  {
    "stevearc/conform.nvim",
    config = function()
      require("conform").setup({
        formatters_by_ft = {
          lua = { "stylua" },
          c = { "clang-format" },
          cpp = { "clang-format" },
          haskell = { "ormolu" },
        },
      })

      -- Keymap to format manually
      vim.keymap.set({ "n", "v" }, "<leader>cf", function()
        require("conform").format({
          lsp_fallback = true,
          async = false,
          timeout_ms = 500,
        })
      end, { desc = "Format file or range (in visual mode)" })
    end,
  },

  -- 7. Rainbow Delimiters: Colorize brackets
  {
    "HiPhish/rainbow-delimiters.nvim",
  },
}
