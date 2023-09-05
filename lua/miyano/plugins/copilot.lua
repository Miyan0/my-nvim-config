return {
	-- copied from LazyVim extras
	{
		"zbirenbaum/copilot.lua",
		cmd = "Copilot",
		build = ":Copilot auth",

		opts = {
			suggestion = { enabled = false },
			panel = { enabled = false },
			filetypes = {
				markdown = true,
				help = true,
				lua = true,
				vim = true,
				typescript = true,
				typescriptreact = true,
				javascript = true,
				javascriptreact = true,
				html = true,
				css = true,
				golang = true,
			},
		},
	},
}
