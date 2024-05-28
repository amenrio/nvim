return {
	"vague2k/huez.nvim",
	-- if you want registry related features, uncomment this
	import = "huez-manager.import",
	config = function()
		require("huez").setup({})
		local pickers = require("huez.pickers")

		vim.keymap.set("n", "<leader>co", pickers.themes, {})
		vim.keymap.set("n", "<leader>cof", pickers.favorites, {})
		vim.keymap.set("n", "<leader>col", pickers.live, {})
		vim.keymap.set("n", "<leader>coe", pickers.ensured, {})
	end,
}
