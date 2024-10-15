return {
	"catppuccin/nvim",
	--"EdenEast/nightfox.nvim",
	--"rebelot/kanagawa.nvim",
	priority = 1000,
	config = function()
		local transparent = false -- set to true if you would like to enable transparency

		local bg = "#1e1e2e"
		local bg_dark = "#191929"
		local bg_highlight = "#143652"
		local bg_search = "#0A64AC"
		local bg_visual = "#275378"
		local fg = "#CBE0F0"
		local fg_dark = "#B4D0E9"
		local fg_gutter = "#627E97"
		local border = "#547998"

		vim.cmd("colorscheme catppuccin")
	end,
}
