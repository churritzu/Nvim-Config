return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	dependencies = {
		"windwp/nvim-ts-autotag",
	},
	config = function()
		local configs = require("nvim-treesitter.configs")
		configs.setup({
			ensure_installed = {
				"angular",
				"bash",
				"css",
				"dockerfile",
				"diff",
				"html",
				"javascript",
				"json",
				"lua",
				"php",
				"python",
				"regex",
				"sql",
				"scss",
				"typescript",
				"tsx",
				"vim",
				"vue",
				"yaml",
			},
			highlight = { enable = true },
			indent = { enable = true },
			autotag = { enable = true },
		})
	end,
}
