return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"angularls",
					"bashls",
					"cssls",
					"css_variables",
					"dockerls",
					"docker_compose_language_service",
					"emmet_ls",
					"html",
					"ts_ls",
					"eslint",
					"jsonls",
					"lua_ls",
					"intelephense",
					"pyright",
					"vuels",
					"yamlls",
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		event = { "BufReadPre", "BufNewFile" },
		dependencies = {
			"hrsh7th/cmp-nvim-lsp",
			{ "antosha417/nvim-lsp-file-operations", config = true },
			{ "folke/neodev.nvim", opts = {} },
		},
		config = function()
			local lspconfig = require("lspconfig")
			lspconfig.angularls.setup({})
			lspconfig.bashls.setup({})
			lspconfig.cssls.setup({})
			lspconfig.css_variables.setup({})
			lspconfig.dockerls.setup({})
			lspconfig.docker_compose_language_service.setup({})
			lspconfig.emmet_ls.setup({})
			lspconfig.html.setup({})
			lspconfig.ts_ls.setup({})
			lspconfig.eslint.setup({})
			lspconfig.jsonls.setup({})
			lspconfig.lua_ls.setup({})
			lspconfig.intelephense.setup({})
			lspconfig.pyright.setup({})
			lspconfig.vuels.setup({})
			lspconfig.yamlls.setup({})
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "gr", vim.lsp.buf.references, {})
			vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {})
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
