return {
	"catppuccin/nvim",
	--"EdenEast/nightfox.nvim",
	--"rebelot/kanagawa.nvim",
	--"navarasu/onedark.nvim",
	priority = 1000,
	config = function()
		require("catppuccin").setup({
			base = "#1e1e2e",
			mantle = "#353b45",
			surface0 = "#3e4451",
			surface1 = "#545862",
			surface2 = "#565c64",
			text = "#cdd6f4",
			--rosewater = "#b6bdca",
			rosewater = "#baf997",
			lavender = "#b4befe",
			red = "#f38ba8",
			peach = "#fab387",
			yellow = "#f9e2af",
			mauve = "#baf997",
			teal = "#94e1d5",
			blue = "#61afef",
			green = "#a6e3a1",
			flamingo = "#ffa5a2",
		})
		vim.cmd("colorscheme catppuccin")
	end,
}
