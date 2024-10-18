return {
	"rest-nvim/rest.nvim",
	config = function()
		vim.g.rest_nvim = {
			cookies = {
				enable = false,
			},
			ui = {
				winbar = false,
			},
		}

		vim.api.nvim_create_autocmd({ "FileType" }, {
			pattern = "http",
			callback = function()
				local buff = tonumber(vim.fn.expand("<abuf>"), 10)
				vim.keymap.set("n", "<leader>rr", "<cmd>Rest run<CR>", { noremap = true, buffer = buff })
				vim.keymap.set("n", "<leader>rl", "<cmd>Rest last<CR>", { noremap = true, buffer = buff })
			end,
		})
	end,
}
