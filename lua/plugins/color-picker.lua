-- autopairs
-- https://github.com/windwp/nvim-autopairs

return {
	"uga-rosa/ccc.nvim",
	event = "InsertEnter",
	-- Optional dependency
	dependencies = { "hrsh7th/nvim-cmp" },
	config = function()
		require("ccc").setup({
			highlighter = {
				auto_enable = true,
				lsp = true,
			},
		})
	end,
}
