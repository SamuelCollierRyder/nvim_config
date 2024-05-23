return {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {},
    config = function()
        vim.keymap.set("n", "<leader>t", function()
            require("trouble").toggle()
        end)
        vim.diagnostic.config({ virtual_text = false })
        vim.diagnostic.config({ update_in_insert = true })
        vim.diagnostic.config({ signs = false })
        vim.keymap.set("n", "<leader>ge", ":lua vim.diagnostic.open_float()<CR>")
    end,
}
