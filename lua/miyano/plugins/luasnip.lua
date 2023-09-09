local M = {

	"L3MON4D3/LuaSnip",
	-- follow latest release.
	version = "2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
	dependencies = {
		"rafamadriz/friendly-snippets", -- useful snippets
	},
	-- install jsregexp (optional!).
	build = "make install_jsregexp",
}

return M
