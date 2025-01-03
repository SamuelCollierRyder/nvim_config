return {
    -- {
    -- "williamboman/mason.nvim",
    -- config = function()
    --     require("mason").setup()
    -- end,
    -- },

    {
        "williamboman/mason.nvim",
        opts = {
            ui = {
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗",
                },
            },
        },
    },

    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup()
        end,
    },

    -- {
    --     "nvim-java/nvim-java",
    --     config = function()
    --         require("java").setup()
    --     end,
    -- },

    {
        "neovim/nvim-lspconfig",
        config = function()
            local capabilities = require("cmp_nvim_lsp").default_capabilities()
            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({ capabilities = capabilities })
            lspconfig.pyright.setup({ capabilities = capabilities })
            lspconfig.ts_ls.setup({ capabilities = capabilities })
            lspconfig.emmet_language_server.setup({ capabilities = capabilities })
            lspconfig.jdtls.setup({ capabilities = capabilities })
            lspconfig.cssls.setup({ capabilities = capabilities })
            lspconfig.html.setup({ capabilities = capabilities })
            vim.keymap.set("n", "<leader>gh", vim.lsp.buf.hover)
            vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition)
            vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action)
        end,
    },
}
