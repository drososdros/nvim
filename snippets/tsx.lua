local ls = require("luasnip")

local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node

ls.add_snippets("all", {
	s("moduleCss", {
		t('import styles from "./'),
		f(function()
			local filepath = vim.api.nvim_buf_get_name(0)
			-- Extract just the filename without the extension
			local filename = vim.fn.fnamemodify(filepath, ":t:r")
			return filename
		end),
		t('.module.css";'),
	}),
})
