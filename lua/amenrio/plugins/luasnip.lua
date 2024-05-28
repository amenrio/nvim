return {
	"L3MON4D3/LuaSnip",
	dependencies = { "rafamadriz/friendly-snippets" },
	event = "VeryLazy",
	build = "make install_jsregexp",
	config = function()
		local ls = require("luasnip")
		require("luasnip/loaders/from_vscode").load({
			include = { "python", "html", "css", "lua", "toml", "go", "yaml" },
		})
		vim.keymap.set({ "i" }, "<C-K>", function()
			ls.expand()
		end, { silent = true })
		vim.keymap.set({ "i", "s" }, "<C-L>", function()
			ls.jump(1)
		end, { silent = true })
		vim.keymap.set({ "i", "s" }, "<C-J>", function()
			ls.jump(-1)
		end, { silent = true })
	end,
}
