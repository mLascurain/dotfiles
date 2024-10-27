return {
	"Exafunction/codeium.vim",
	event = "BufEnter",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"hrsh7th/nvim-cmp",
	},

	config = function()
		vim.keymap.set("n", "<leader>ch", "<cmd>CodeiumChat<CR>", { desc = "Open Codeium Chat" })
		vim.keymap.set("i", "<c-s-x>", function()
			return vim.fn["codeium#Clear"]()
		end, { expr = true, silent = true })
		vim.g.codeium_enable_all_the_time = 1
	end,
}
