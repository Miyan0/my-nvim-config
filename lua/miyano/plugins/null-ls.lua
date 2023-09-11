return {
	"jose-elias-alvarez/null-ls.nvim", -- configure formatters & linters
	event = { "BufReadPre", "BufNewFile" },
	ft = "go",
	opts = function()
		return require("miyano.configs.null-ls")
	end,
}
