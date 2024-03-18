return {
    {
        "rose-pine/neovim",
        name = "rose-pine",
    },
    {
        'rebelot/kanagawa.nvim'
    },
    {
        "folke/tokyonight.nvim",
        lazy = false,
    },
    {
        "catppuccin/nvim",
        config = function ()
            require("catppuccin").setup({
                integrations = {
                    cmp = true,
                    gitsigns = true,
                    harpoon = true,
                    illuminate = true,
                    indent_blankline = {
                        enabled = false,
                        scope_color = "sapphire",
                        colored_indent_levels = false,
                    },
                    mason = true,
                    native_lsp = { enabled = true },
                    notify = true,
                    nvimtree = true,
                    neotree = true,
                    symbols_outline = true,
                    telescope = true,
                    treesitter = true,
                    treesitter_context = true,
                }
            })
            -- vim.cmd.colorscheme("catppuccin-mocha")

            -- Temporary solution
           -- for _, group in ipairs(vim.fn.getcompletion("@lsp", "highlight")) do
           --     vim.api.nvim_set_hl(0, group, {})
           -- end
        end,
    },
}
