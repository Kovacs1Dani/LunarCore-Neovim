-- Enable line numbers and relative numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Common extra "stuff" for a better experience
vim.opt.tabstop = 4         -- Number of spaces a tab represents
vim.opt.shiftwidth = 4      -- Spaces for each indentation
vim.opt.expandtab = true    -- Convert tabs to spaces
vim.opt.smartindent = true  -- Auto-indent new lines
vim.opt.cursorline = true   -- Highlight the current line
vim.g.deprecation_warnings = false-- Show diagnostic message in a floating window
vim.keymap.set('n', '<leader>d', vim.diagnostic.open_float, {})

-- Jump to next/previous error
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, {})
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, {})

vim.opt.termguicolors = true
vim.opt.clipboard = "unnamedplus"

-- Disable automatic comment continuation
vim.api.nvim_create_autocmd("FileType", {
  pattern = "*",
  callback = function()
    vim.opt_local.formatoptions:remove({ "r", "o" })
  end,
})
