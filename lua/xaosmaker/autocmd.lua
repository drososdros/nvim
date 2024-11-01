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
-- Cmd to create module.css
vim.api.nvim_create_user_command("ModuleCss", function()
	local current_dir = vim.fn.expand("%:p:h")

	-- Get the current filename without extension
	local filename = vim.fn.expand("%:t:r")

	-- Append .module.css to the filename
	local new_filename = current_dir .. "/" .. filename .. ".module.css"

	-- Create a new file in the current directory
	local file = io.open(new_filename, "w")
	if file then
		io.close(file)
		print("Created file: " .. new_filename)

		-- Open the new file in a buffer
		vim.cmd("edit " .. new_filename)
	else
		print("Failed to create file: " .. new_filename)
	end
end,{})
