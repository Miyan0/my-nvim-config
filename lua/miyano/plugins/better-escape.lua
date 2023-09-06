return {
	"max397574/better-escape.nvim",
	event = "InsertEnter",
	config = function()
		-- lua, default settings
		require("better_escape").setup({
			mapping = { "jk" }, -- a table with mappings to use
			timeout = vim.o.timeoutlen,
			clear_empty_lines = false,
			keys = "<Esc>",
		})
	end,
}
