return {
	"jonahgoldwastaken/copilot-status.nvim",
	event = "BufReadPost",
	lazy = true,
	config = function()
		require("copilot_status").setup({
			icons = {
				idle = " ",
				error = " ",
				offline = " ",
				warning = " ",
				loading = " ",
			},
			debug = false,
		})
	end,
}
