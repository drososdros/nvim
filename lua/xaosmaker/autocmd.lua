vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),

	callback = function()
		vim.highlight.on_yank()
	end,
})
-- vim.api.nvim_create_autocmd("BufWritePre", {
-- 	desc = "auto short the tailwind functions",
-- 	group = vim.api.nvim_create_augroup("tailwind-short", { clear = true }),
-- 	callback = function()
-- 		vim.cmd("TailwindSort")
-- 	end,
-- })
