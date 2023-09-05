-- help ->:h bufferline-configuration
return {
	"akinsho/bufferline.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	version = "*",
	diagnostics = "nvim_lsp",
	opts = { -- will call: require(bufferline).setup(opts)
		options = {
			mode = "buffers",
			separator_style = "thick",
			themable = true,
			offsets = {
				{
					filetype = "NvimTree",
					text = "File Explorer",
					text_align = "left",
					separator = false,
				},
			},
		},
	},
}
