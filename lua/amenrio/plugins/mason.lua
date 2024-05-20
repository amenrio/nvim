return {
    {
        'williamboman/mason.nvim',
        config = function()
            require('mason').setup()
        end
    },
    {
        'williamboman/mason-lspconfig.nvim',
        dependencies = {
            'neovim/nvim-lspconfig',
            'williamboman/mason.nvim',
        },
        config = function()
            require('mason-lspconfig').setup({
                ensure_installed = {
                    'pyright',
                    'lua_ls',
                    'jsonls',
                    'yamlls',
                    'esling',
                },
            })
        end
    },
    {
        'WhoIsSethDaniel/mason-tool-installer.nvim',
        dependencies = {
            'williamboman/mason.nvim'
        },
        config = function()
            require('mason-tool-installer').setup({
                ensure_installed = {
                    'prettierd',
                    'black',
                    'isort',
                    'stylua',
                    'debugpy',
                    'cspell',
                }
            })
        end,
    },
}
