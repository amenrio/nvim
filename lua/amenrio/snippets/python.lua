local ls = require("luasnip")

local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

ls.add_snippets("python", {
	s("hello", {
		t('print("hello_world")'),
	}),
})
-- local fmt = require("luasnip.extras.fmt").fmt

-- ls.add_snippets("python", {
-- 	s("ifnm", fmt('if __name__ == "__main__":', {})),
-- 	s("try", fmt("try:\n{}\nexcept:\n{}", { i(1), i(0) })),
-- 	s("ieq", fmt("if {} == {} :", { i(1), i(0) })),
-- 	s("igt", fmt("if {} > {} :", { i(1), i(0) })),
-- 	s("ils", fmt("if {} < {} :", { i(1), i(0) })),
-- 	s("ige", fmt("if {} >= {} :", { i(1), i(0) })),
-- 	s("ile", fmt("if {} <= {} :", { i(1), i(0) })),
-- 	s("iel", fmt("if {}:\n{}\nelse:\n{}", { i(1), i(2), i(0) })),
-- })
