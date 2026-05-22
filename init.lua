-- First, load your custom options (line numbers, etc.)
require("config.options")

-- Then, load the plugin manager
require("config.lazy")

-- Function to clear backgrounds
local function transparent_bg()
  local groups = {
    "Normal", "NormalNC", "LineNr", "Folded", "NonText", "SignColumn",
    "EndOfBuffer", "NormalFloat", "FloatBorder", "TelescopeNormal",
    "TelescopeBorder", "NeoTreeNormal", "NeoTreeNormalNC",
  }
  for _, group in ipairs(groups) do
    vim.api.nvim_set_hl(0, group, { bg = "NONE", ctermbg = "NONE" })
  end
end

-- Apply transparency
transparent_bg()

-- Optional: Re-apply if you change colorschemes mid-session
vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "*",
  callback = transparent_bg,
})
