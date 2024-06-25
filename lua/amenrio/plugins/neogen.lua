return {
	"danymat/neogen",
	event = "VeryLazy",
	config = function()
		require("neogen").setup({
			enabled = true,
			input_after_comment = true,
			languages = {
				python = {
					template = {
						annotation_convention = "google_docstrings",
					},
				},
			},
		})
	end,
	keys = {
		{ "<leader>nf", "<cmd>Neogen func<CR>", desc = "Generate function docstring" },
		{ "<leader>nc", "<cmd>Neogen class<CR>", desc = "Generate class docstring" },
		{ "<leader>nF", "<cmd>Neogen file<CR>", desc = "Generate file docstring" },
	},
}
