return{
    {
        "rose-pine/neovim",
        name = "rose-pine",
    },
    {
        "ellisonleao/gruvbox.nvim",
        priority = 2000,
        config = function ()
            require('gruvbox').setup({
                terminal_colors = false,
            })
        end,
    },
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        config = function ()
            require('lualine').setup({
                options = {
                    theme = 'tokyonight'
                }
            })
            require('tokyonight').setup({
                style = 'night',
                transparent=true,
            })
        end
    },
}
