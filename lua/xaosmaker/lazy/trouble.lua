return {
	--[[ {
    "folke/trouble.nvim",
    config = function()
      require("trouble").setup({})

      vim.keymap.set("n", "<leader>dm", function()
        require("trouble").toggle()
      end)

      vim.keymap.set("n", "dn", function()
        require("trouble").next({ skip_groups = true, jump = true })
      end)

      vim.keymap.set("n", "dp", function()
        require("trouble").previous({ skip_groups = true, jump = true })
      end)
    end,
  },
} ]]
	--{
	"folke/trouble.nvim",
	opts = {}, -- for default options, refer to the configuration section for custom setup.
	cmd = "Trouble",
	keys = {
		{ "<leader>xx", "<cmd>TroubleToggle<CR>", desc = "Open/close trouble list" },
		{ "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<CR>", desc = "Open trouble workspace diagnostics" },
		{ "<leader>xd", "<cmd>TroubleToggle document_diagnostics<CR>", desc = "Open trouble document diagnostics" },
		{ "<leader>xq", "<cmd>TroubleToggle quickfix<CR>", desc = "Open trouble quickfix list" },
		{ "<leader>xl", "<cmd>TroubleToggle loclist<CR>", desc = "Open trouble location list" },
		{ "<leader>xt", "<cmd>TodoTrouble<CR>", desc = "Open todos in trouble" },
	},
}
