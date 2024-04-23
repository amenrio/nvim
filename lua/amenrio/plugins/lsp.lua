return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
        "hrsh7th/cmp-cmdline",
        "hrsh7th/nvim-cmp",
        "L3MON4D3/LuaSnip",
        "j-hui/fidget.nvim",
        "windwp/nvim-autopairs",
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
                    "pylint",
                    "black",
                },
            },
            handlers = {
                function (server_name) -- default handelr
                    require("lspconfig")[server_name].setup {}
                end,
            },
        })

        local cmp_autopairs = require("nvim-autopairs.completion.cmp")
        local cmp = require('cmp')
        local cmp_select = {behavior = cmp.SelectBehavior.Select}
        local neogen = require('neogen')

        require("nvim-autopairs").setup()

        cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())

        cmp.setup({
            snippet = {
                expand = function(args)
                    require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
                end,
            },
            window = {
                completion = cmp.config.window.bordered(),
                documentation = cmp.config.window.bordered(),
            },
            mapping = cmp.mapping.preset.insert({
                ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
                ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
                ['<C-y>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
                ['<C-Space>'] = cmp.mapping.complete(),
                ['<C-l>'] = cmp.mapping(function (fallback)
                    if neogen.jumpable() then
                        neogen.jump_next()
                    else
                        fallback()
                    end
                end, { "i", "s" }),
                ['<C-h>'] = cmp.mapping(function (fallback)
                    if neogen.jumpable() then
                        neogen.jump_prev()
                    else
                        fallback()
                    end
                end, { "i", "s" }),
            }),
            sources = cmp.config.sources({
                { name = 'nvim_lsp' },
                { name = 'luasnip' }, -- For luasnip users.
                { name = 'buffer' ,max_item_count = 5 },
                { name = 'path', max_item_count = 5 }

            })
        })

        require('fidget').setup()

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
