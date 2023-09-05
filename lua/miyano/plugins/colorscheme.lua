local M = {}

M.catppuccin = {
	"catppuccin/nvim",
	priority = 1000,
	name = "catppuccin",
	config = function()
		vim.cmd([[colorscheme catppuccin]])
	end,
}

M.aquarium = {
	"frenzyexists/aquarium-vim",
	priority = 1000,
	name = "aquarium",
	config = function()
		vim.cmd([[colorscheme aquarium]])
	end,
}

M.nightowl = {
	"oxfist/night-owl.nvim",
	lazy = false, -- make sure we load this during startup if it is your main colorscheme
	priority = 1000, -- make sure to load this before all the other start plugins
	config = function()
		-- load the colorscheme here
		vim.cmd([[colorscheme night-owl]])
	end,
}

return M.catppuccin
