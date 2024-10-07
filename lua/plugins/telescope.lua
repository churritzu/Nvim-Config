return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		},
		config = function()
			local telescope = require("telescope")
			local builtin = require("telescope.builtin")
			telescope.load_extension("fzf")

			telescope.setup({
				defaults = {
					file_ignore_patterns = {
						".git",
						".DS_Store",
						"node_modules",
						"__pycache__",
						".vscode",
						"package-lock.json",
						"Pipfile.lock",
						"build",
						"target",
						"vendor",
						"dist",
						"venv",
						".mypy_cache",
						"composer.lock",
						"composer",
					},
				},
			})

			vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
			vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
			vim.keymap.set("n", "<leader>fp", builtin.buffers, { desc = "Telescope buffers" })
			vim.keymap.set("n", "<leader>fs", builtin.grep_string, { desc = "Search word under cursor" })
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})
			require("telescope").load_extension("ui-select")
		end,
	},
}
