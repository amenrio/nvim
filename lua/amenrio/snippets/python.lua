require("luasnip.session.snippet_collection").clear_snippets("python")

local ls = require("luasnip")

local s = ls.snippet
local i = ls.insert_node

local fmt = require("luasnip.extras.fmt").fmt

ls.add_snippets("python", {
	s("ifnm", fmt('if __name__ == "__main__":', {})),
	s("try", fmt("try:\n{}\nexcept:\n{}", { i(1), i(0) })),
	s("ieq", fmt("if {} == {} :", { i(1), i(0) })),
	s("igt", fmt("if {} > {} :", { i(1), i(0) })),
	s("ils", fmt("if {} < {} :", { i(1), i(0) })),
	s("ige", fmt("if {} >= {} :", { i(1), i(0) })),
	s("ile", fmt("if {} <= {} :", { i(1), i(0) })),
	s("iel", fmt("if {}:\n{}\nelse:\n{}", { i(1), i(2), i(0) })),
})
