return {
	"jose-elias-alvarez/null-ls.nvim", -- configure formatters & linters
	event = { "BufReadPre", "BufNewFile" },
        ft = {"go", "lua"},
	opts = function()
		return require("miyano.configs.null-ls")
	end,
}
