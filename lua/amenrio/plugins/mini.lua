return {
	{
		"echasnovski/mini.comment",
		event = "VeryLazy",
		version = false,
		config = function()
			require("mini.comment").setup()
		end,
	},
	{
		"echasnovski/mini.indentscope",
		event = "VeryLazy",
		version = false,
		config = function()
			require("mini.indentscope").setup()
		end,
	},
	{
		"echasnovski/mini.starter",
		event = "VeryLazy",
		version = false,
		config = function()
			require("mini.starter").setup()
		end,
	},
	{
		"echasnovski/mini.surround",
		event = "VeryLazy",
		version = false,
		config = function()
			require("mini.surround").setup({
				search_method = "cover_or_nearest",
			})
		end,
	},
	-- {
	--     "echasnovski/mini.files",
	--     version = false,
	--     config = function()
	--         require("mini.files").setup()
	--     end,
	-- }
}
