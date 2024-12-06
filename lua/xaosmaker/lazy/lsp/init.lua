return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },

	dependencies = {
		"williamboman/mason.nvim",
		"j-hui/fidget.nvim",
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},

	config = function()
		local mason = require("mason")
		local mason_lspconfig = require("mason-lspconfig")
		local mason_tool_installer = require("mason-tool-installer")

		local cmp_lsp = require("cmp_nvim_lsp")
		local capabilities = cmp_lsp.default_capabilities()

		require("fidget").setup({})

		local signs = {

			{ name = "DiagnosticSignError", text = "" },
			{ name = "DiagnosticSignWarn", text = "" },
			{ name = "DiagnosticSignHint", text = "" },

			-- hint =,""
			{ name = "DiagnosticSignInfo", text = "" },
		}

		for _, sign in ipairs(signs) do
			vim.fn.sign_define(sign.name, { texthl = sign.name, text = sign.text, numhl = "" })
		end

		mason.setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})
		mason_lspconfig.setup({

			ensure_installed = {
				"lua_ls",
				"cssls",
				"dockerls",
				"html",
				"ts_ls",
				"pyright",
				"bashls",
				"jsonls",
				"yamlls",
				"tailwindcss",
				"bashls",
				"docker_compose_language_service",
				"eslint",
				-- "nginx_language_server",
				"pylsp",
				"clangd",
				"hydra_lsp",
			},
			handlers = {
				function(server_name) -- default handler (optional)
					require("lspconfig")[server_name].setup({
						capabilities = capabilities,
					})
				end,
				["lua_ls"] = function()
					local lspconfig = require("lspconfig")
					lspconfig.lua_ls.setup({
						capabilities = capabilities,
						settings = {
							Lua = {
								diagnostics = {
									globals = { "bit", "vim", "it", "describe", "before_each", "after_each" },
								},
							},
						},
					})
				end,
				["pyright"] = function()
					local lspconfig = require("lspconfig")
					lspconfig.pyright.setup({
						capabilities = capabilities,
						settings = {
							pyright = {
								disableLanguageServices = false,
								disableOrganizeImports = false,
							},

							python = {
								analysis = {
									autoImportCompletions = true,
									autoSearchPaths = true,
									diagnosticMode = "workspace",
									typeCheckingMode = "off",
									useLibraryCodeForTypes = false,
								},
							},
						},
						configuration = {
							reportIncompatibleVariableOverride = "none",
						},
					})
				end,
				["clangd"] = function()
					local lspconfig = require("lspconfig")
					lspconfig.clangd.setup({
						capabilities = capabilities,
						cmd = { "clangd", "--background-index" },
					})
				end,
			},
		})

		mason_tool_installer.setup({
			ensure_installed = {
				"prettier", -- prettier formatter
				"stylua", -- lua formatter
				"isort", -- python formatter
				"black", -- python formatter
				"eslint_d",
				"clang-format",
			},
		})

		vim.diagnostic.config({

			virtual_text = true, -- drosos disable virtual text
			signs = {
				active = signs, -- show signs
			},
			update_in_insert = true,
			underline = true,
			severity_sort = true,
			float = {
				focusable = true,
				style = "minimal",
				border = "rounded",
				source = "always",
				header = "",
				prefix = "",
			},
		})
	end,
}
