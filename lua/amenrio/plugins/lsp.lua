return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
    },
    config = function()
        require("mason").setup()
        require("mason-lspconfig").setup({
            ensure_installed = {
                "lua_ls",
                "pyright",
                "jsonls",
                "bashls",
                python = {
                    "pyright",
                    "flake8",
                    "black",
                },
            },
            handlers = {
                function (server_name) -- default handelr
                    require("lspconfig")[server_name].setup {}
                end,
            },
        })
        require("lspconfig").lua_ls.setup {
            settings = {
                Lua = {
                    diagnostics = {
                        globals = { "vim" },
                    },
                },
            },
        }

    end,
}
