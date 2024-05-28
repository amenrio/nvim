return {
	{
		"rose-pine/neovim",
		name = "rose-pine",
	},
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		config = function()
			require("catppuccin").setup({})
		end,
	},
	{
		"ellisonleao/gruvbox.nvim",
		priority = 2000,
		config = function()
			require("gruvbox").setup({
				terminal_colors = false,
			})
		end,
	},
	{
		"EdenEast/nightfox.nvim",
		config = function()
			require("nightfox").setup({
				options = {
					styles = {
						comments = "italic",
						keywords = "bold",
						types = "italic,bold",
					},
				},
			})
		end,
	},
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("tokyonight").setup({
				style = "night",
				transparent = true,
				on_colors = function(colors)
					colors.bg_visual = "#438899"
				end,
			})
		end,
	},
	{
		"xiyaowong/transparent.nvim",
	},
}
