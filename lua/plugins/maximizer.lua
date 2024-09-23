return {
	"szw/vim-maximizer",
	config = function()
		vim.keymap.set("n", "<leader>z", ":MaximizerToggle<cr>", { desc = "Maximizer Toggle" })
	end,
}
