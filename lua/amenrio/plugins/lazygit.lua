return {
	{
		"kdheepak/lazygit.nvim",
		event = "VeryLazy",
		cmd = {
			"LazyGit",
			"LazyGitConfig",
			"LazyGitCurrentFile",
			"LazyGitFilter",
			"LazyGitFilterCurrentFile",
		},
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
		keys = {
			{ "<leader>gg", "<cmd>LazyGit<cr>", desc = "Open LazyGit" },
			{ "<leader>gC", "<cmd>LazyGitConfig<cr>", desc = "LazyGit config" },
			{ "<leader>gcf", "<cmd>LazyGitCurrentFile<cr>", desc = "LazyGit current file" },
			{ "<leader>gF", "<cmd>LazyGitFilter<cr>", desc = "LazyGit filter" },
			{ "<leader>gcF", "<cmd>LazyGitFilterCurrentFile<cr>", desc = "LazyGit filter current file" },
		},
		config = function()
			vim.g.lazygit_floating_window_scaling_factor = 1
		end,
	},
	{
		"lewis6991/gitsigns.nvim",

		event = "VeryLazy",
		config = function()
			require("gitsigns").setup()
		end,
	},
}
