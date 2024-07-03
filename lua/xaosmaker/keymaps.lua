vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")
--[[ vim.keymap.set("n", "nd", vim.diagnostic.goto_prev)
vim.keymap.set("n", "pd", vim.diagnostic.goto_next)
vim.keymap.set("n", "sd", "<cmd>lua vim.diagnostic.open_float()<CR>") ]]
-- vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist)
vim.keymap.set("n", "<C-h>", "<C-w><C-h>")
vim.keymap.set("n", "<C-l>", "<C-w><C-l>")
vim.keymap.set("n", "<C-j>", "<C-w><C-j>")
vim.keymap.set("n", "<C-k>", "<C-w><C-k>")
vim.keymap.set("n", "\\", "<cmd>NvimTreeToggle<cr>")
vim.keymap.set("i", "jj", "<ESC>")
-- vim.keymap.set("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>")
-- vim.keymap.set("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>")
-- vim.keymap.set("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>")
--
-- vim.keymap.set("n", "<leader>nt", function()
-- 	require("todo-comments").jump_next()
-- end, { desc = "Next todo comment" })
--
-- vim.keymap.set("n", "<leader>pt", function()
-- 	require("todo-comments").jump_prev()
-- end, { desc = "Previous todo comment" })
--
-- vim.g.Illuminate_ftblacklist = { "alpha", "NvimTree" }
-- vim.api.nvim_set_keymap("n", "<a-n>", '<cmd>lua require"illuminate".next_reference{wrap=true}<cr>', { noremap = true })
-- vim.api.nvim_set_keymap(
-- 	"n",
-- 	"<a-p>",
-- 	'<cmd>lua require"illuminate".next_reference{reverse=true,wrap=true}<cr>',
-- 	{ noremap = true }
-- )
-- vim.keymap.set("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>")
-- vim.keymap.set("n", "gI", "<cmd>lua vim.lsp.buf.implementation()<CR>")
-- vim.keymap.set("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>")
-- vim.keymap.set("n", "gl", "<cmd>lua vim.diagnostic.open_float()<CR>")
-- vim.keymap.set("n", "<leader>lf", "<cmd>TailwindSort<cr>")
--
-- -- vim.keymap.set( "n", "<leader>hc", "<cmd><cr>")
-- vim.keymap.set("n", "<leader>li", "<cmd>LspInfo<cr>")
-- vim.keymap.set("n", "<leader>lI", "<cmd>LspInstallInfo<cr>")
-- vim.keymap.set("n", "<leader>la", "<cmd>lua vim.lsp.buf.code_action()<cr>")
-- vim.keymap.set("n", "<leader>nd", "<cmd>lua vim.diagnostic.goto_next({buffer=0})<cr>")
-- vim.keymap.set("n", "<leader>pd", "<cmd>lua vim.diagnostic.goto_prev({buffer=0})<cr>")
-- vim.keymap.set("n", "<leader>lr", "<cmd>lua vim.lsp.buf.rename()<cr>")
-- vim.keymap.set("n", "<leader>ls", "<cmd>lua vim.lsp.buf.signature_help()<CR>")
-- vim.keymap.set("n", "<leader>lq", "<cmd>lua vim.diagnostic.setloclist()<CR>")
--
--
vim.keymap.set("n", "gR", "<cmd>Telescope lsp_references<CR>", { desc = "Show LSP references" })
vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { desc = "Go to declaration go to declaration" })
vim.keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<CR>", { desc = "Show LSP definitions show lsp" })
vim.keymap.set("n", "gi", "<cmd>Telescope lsp_implementations<CR>", { desc = " show lsp implementations" })
vim.keymap.set("n", "gt", "<cmd>Telescope lsp_type_definitions<CR>", { desc = " show lsp type definitions" })
vim.keymap.set(
	{ "n", "v" },
	"<leader>ca",
	vim.lsp.buf.code_action,
	{ desc = " see available code actions, in visual mode will apply to selection" }
)
vim.keymap.set("n", "<leader>D", "<cmd>Telescope diagnostics bufnr=0<CR>", { desc = " show  diagnostics for file" })
vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, { desc = " show diagnostics for line" })
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = " jump to previous diagnostic in buffer" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = " jump to next diagnostic in buffer" })
vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = " show documentation for what is under cursor" })
vim.keymap.set("n", "<leader>rs", ":LspRestart<CR>", { desc = " mapping to restart lsp if necessary" })
vim.keymap.set("n", "gR", "<cmd>Telescope lsp_references<CR>", { desc = " show definition, references" })
vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { desc = " go to declaration" })
vim.keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<CR>", { desc = " show lsp definitions" })
vim.keymap.set("n", "gi", "<cmd>Telescope lsp_implementations<CR>", { desc = " show lsp implementations" })
vim.keymap.set("n", "gt", "<cmd>Telescope lsp_type_definitions<CR>", { desc = " show lsp type definitions" })
vim.keymap.set(
	{ "n", "v" },
	"<leader>ca",
	vim.lsp.buf.code_action,
	{ desc = " see available code actions, in visual mode will apply to selection" }
)
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = " smart rename" })
vim.keymap.set("n", "<leader>D", "<cmd>Telescope diagnostics bufnr=0<CR>", { desc = " show  diagnostics for file" })
vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, { desc = " show diagnostics for line" })
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = " jump to previous diagnostic in buffer" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = " jump to next diagnostic in buffer" })
vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = " show documentation for what is under cursor" })
vim.keymap.set("n", "<leader>rs", ":LspRestart<CR>", { desc = " mapping to restart lsp if necessary" })
