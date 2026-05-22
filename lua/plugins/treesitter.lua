return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local status, configs = pcall(require, "nvim-treesitter.configs")
    if not status then
      configs = require("nvim-treesitter.config")
    end

    configs.setup({
      ensure_installed = { "c", "cpp", "haskell", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline", "python", "javascript", "typescript", "bash" },
      sync_install = false,
      highlight = { enable = true },
      indent = { enable = true },
    })
  end,
}
