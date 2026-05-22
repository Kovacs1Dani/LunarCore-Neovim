return {
    "windwp/nvim-autopairs",
    event = "InsertEnter", -- Only loads when you start typing
    config = function()
        require("nvim-autopairs").setup({})
    end
}   
