return {
    {
        "folke/tokyonight.nvim",
        config = function()
            require("tokyonight").setup({
                style = "night",
                terminal_colors = true,
                styles = {
                    comments = {italic = false},
                    keywords = {italic = false},
                    sidebars = "dark",
                    floats = "dark",
                },
            })
        end
    },
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000
    }
}
