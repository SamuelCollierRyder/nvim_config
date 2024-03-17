return {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,

    config = function()
        require("catppuccin").setup({
            transparent_background = true
        })
        vim.cmd.colorscheme "catppuccin"
        vim.api.nvim_set_hl(0, "NormalFloat", {bg="#3B4252"})
        vim.diagnostic.config({signs = false})
    end
}
